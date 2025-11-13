.class public final Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiControlHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final blacklist CONTROL_ID:Ljava/lang/String; = "conrol_id"

.field private static final blacklist DB_NAME:Ljava/lang/String; = "WifiHistory.db"

.field private static final blacklist DB_TABLE:Ljava/lang/String; = "WifiHistory"

.field private static final blacklist DB_VERSION:I = 0x1

.field private static final blacklist DB_VERSION_NOP_UPGRADE_FROM:I = 0x0

.field private static final blacklist DB_VERSION_NOP_UPGRADE_TO:I = 0x1

.field public static final blacklist DISABLE_NUMBER:Ljava/lang/String; = "disable_number"

.field public static final blacklist DISABLE_WIFI:I = 0x0

.field public static final blacklist ENABLE_NUMBER:Ljava/lang/String; = "enable_number"

.field public static final blacklist ENABLE_WIFI:I = 0x1

.field public static final blacklist FIRST_CONTROL:Ljava/lang/String; = "first_control"

.field public static final blacklist LAST_CONTROL:Ljava/lang/String; = "last_control"

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist TAG:Ljava/lang/String; = "DatabaseHelper"

.field public static final blacklist TIME_STAMP:Ljava/lang/String; = "time_stamp"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "WifiHistory.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private blacklist createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "createTable"

    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "CREATE TABLE WifiHistory(conrol_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT, time_stamp LONG, enable_number INTEGER, disable_number INTEGER, first_control LONG, last_control INTEGER) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "dropTable"

    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS WifiHistory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    return p4
.end method

.method private blacklist getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J
    .locals 3

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    :cond_1
    return-wide p4
.end method


# virtual methods
.method blacklist checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "time_stamp"

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p2

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "time_stamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "last_control"

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, p2, v9}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "first_control"

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "first_control"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "enable_number"

    invoke-direct {p0, v3, p1, p2, v9}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "disable_number"

    invoke-direct {p0, v3, p1, p2, v9}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v4

    if-nez v10, :cond_1

    move v9, v5

    :cond_1
    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method blacklist getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method blacklist getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "time_stamp ASC"

    return-object v0
.end method

.method blacklist getIdColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "conrol_id"

    return-object v0
.end method

.method blacklist getProjectionMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "conrol_id"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time_stamp"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enable_number"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disable_number"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_control"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "first_control"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiHistory"

    return-object v0
.end method

.method blacklist getType()Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.dir/vnd.samsung.wifi.control"

    return-object v0
.end method

.method blacklist getUniqueColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "package_name"

    return-object v0
.end method

.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "DatabaseHelper"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading downloads database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
