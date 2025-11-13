.class public Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;
.super Landroid/content/ContentProvider;
.source "NotificationHistoryImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final blacklist AUTHORITY:Ljava/lang/String; = "com.android.server.notification.provider"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist DATABASE_VERSION:I = 0x1

.field private static final blacklist HISTORY_RETENTION_DAYS:J = 0x1L

.field private static final blacklist HISTORY_RETENTION_MS:J = 0x5265c00L

.field public static final blacklist KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final blacklist KEY_TIME:Ljava/lang/String; = "time"

.field public static final blacklist KEY_URI_ID:Ljava/lang/String; = "uri_id"

.field private static final blacklist SETTINGS_TABLE:Ljava/lang/String; = "NotiHistoryImgProvider"

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationHistoryImageProvider"

.field static final blacklist URL:Ljava/lang/String; = "content://com.android.server.notification.provider"

.field private static final blacklist sDatabaseName:Ljava/lang/String; = "notihistoryimg.db"

.field private static blacklist sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;


# instance fields
.field private blacklist mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.android.server.notification.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    sput-object p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    return-void
.end method

.method private blacklist addImageToCache(Landroid/content/ContentValues;)J
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const-wide/16 v1, -0x1

    const-string v3, "NotificationHistoryImageProvider"

    if-nez v0, :cond_0

    const-string v0, "Error getting mOpenHelper in addImageToCache"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "Error getting DB in addImageToCache"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    const-wide/16 v4, -0x1

    :try_start_0
    const-string v6, "Added to cache image"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "NotiHistoryImgProvider"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    move-wide v4, v6

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    const-string v1, "Failed to cache image"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4
.end method

.method public static blacklist getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    invoke-direct {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    return-object v0
.end method


# virtual methods
.method public blacklist addImageToCache(Ljava/lang/String;[BJ)J
    .locals 9

    const-wide/16 v0, -0x1

    const-string v2, "NotificationHistoryImageProvider"

    if-eqz p2, :cond_4

    array-length v3, p2

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    if-nez v3, :cond_1

    const-string v3, "Error getting mOpenHelper in addImageToCache"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "Error getting DB in addImageToCache"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_2
    const-wide/16 v4, -0x1

    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "uri_id"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "image"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v7, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", image= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", postedTime= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "NotiHistoryImgProvider"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    move-wide v4, v7

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    const-string v0, "Failed to cache image"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4

    :cond_4
    :goto_1
    const-string v3, "addImageToCache image is null or empty."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const-string v1, "NotificationHistoryImageProvider"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string v0, "Error getting mOpenHelper in delete db"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Failed to delete db."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return v2

    :cond_1
    const-string v3, "NotiHistoryImgProvider"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete due to unknown reason. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    return v2
.end method

.method public blacklist deleteRows(J)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v1, 0x0

    const-string v2, "NotificationHistoryImageProvider"

    if-nez v0, :cond_0

    const-string v0, "Error getting mOpenHelper in deleteRows"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Error getting DB in deleteRows"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-wide/32 v3, 0x5265c00

    sub-long v3, p1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time<="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NotiHistoryImgProvider"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deletedRows= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleteTime= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public blacklist deleteRows(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v1, 0x0

    const-string v2, "NotificationHistoryImageProvider"

    if-nez v0, :cond_0

    const-string v0, "Error getting mOpenHelper in deleteRows"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Error getting DB in deleteRows"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v1, "uri_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotiHistoryImgProvider"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletedRows, uri= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->addImageToCache(Landroid/content/ContentValues;)J

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v2, 0x0

    const-string v3, "NotificationHistoryImageProvider"

    if-nez v1, :cond_0

    const-string v1, "Error getting mOpenHelper in getCachedImage"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "Error getting DB in getCachedImage"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v5, "NotiHistoryImgProvider"

    const/4 v9, 0x0

    move-object v4, v1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, p1

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    move-object v4, p1

    :goto_0
    return-object v2
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updatePostedTime(JLjava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v1, 0x0

    const-string v2, "NotificationHistoryImageProvider"

    if-nez v0, :cond_0

    const-string v0, "Error getting mOpenHelper in updatePostedTime"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Error getting DB in updatePostedTime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v2, p3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "uri_id=?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotiHistoryImgProvider"

    invoke-virtual {v0, v7, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method
