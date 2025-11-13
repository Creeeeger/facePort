.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final whitelist ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final greylist-max-o EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final whitelist EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final whitelist EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final whitelist EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final whitelist EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final whitelist EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final whitelist EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final whitelist EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field private static final blacklist FILE_PATH:Ljava/lang/String; = "path"

.field protected static final blacklist HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"

.field public static final whitelist ID_COLUMN_INDEX:I = 0x0

.field private static final greylist-max-o INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o MEDIA_COLUMNS:[Ljava/lang/String;

.field private static blacklist OPEN_THEME_DIRECTORY:Ljava/lang/String; = null

.field protected static blacklist PREFIX_OPEN_THEME:Ljava/lang/String; = null

.field public static final whitelist SEM_TYPE_NOTIFICATION_SECOND:I = 0x100

.field public static final whitelist SEM_TYPE_RINGTONE_SECOND:I = 0x80

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RingtoneManager"

.field private static final blacklist TITLE_CACHE:Ljava/lang/String; = "title"

.field public static final whitelist TITLE_COLUMN_INDEX:I = 0x1

.field public static final whitelist TYPE_ALARM:I = 0x4

.field public static final whitelist TYPE_ALL:I = 0x7

.field public static final whitelist TYPE_NOTIFICATION:I = 0x2

.field public static final whitelist TYPE_RINGTONE:I = 0x1

.field public static final blacklist TYPE_SYSTEM_SOUND:I = 0x200

.field public static final whitelist URI_COLUMN_INDEX:I = 0x2

.field private static blacklist mDefaultAlarmUri:Landroid/net/Uri;

.field private static blacklist mDefaultNotification2Uri:Landroid/net/Uri;

.field private static blacklist mDefaultNotificationUri:Landroid/net/Uri;

.field private static blacklist mDefaultRingtone2Uri:Landroid/net/Uri;

.field private static blacklist mDefaultRingtoneUri:Landroid/net/Uri;


# instance fields
.field private final greylist-max-o mActivity:Landroid/app/Activity;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist mCursor:Landroid/database/Cursor;

.field private final greylist-max-o mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIncludeParentRingtones:Z

.field private greylist-max-o mPreviousRingtone:Landroid/media/Ringtone;

.field private greylist-max-o mStopPreviousRingtone:Z

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 224
    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "title_key"

    const-string/jumbo v4, "volume_name"

    const-string v5, "bucket_display_name"

    const-string v6, "is_ringtone"

    const-string v7, "is_notification"

    const-string v8, "is_alarm"

    const-string v9, "bookmark"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 239
    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "title_key"

    const-string/jumbo v5, "volume_name"

    const-string v6, "bucket_display_name"

    const-string v7, "is_ringtone"

    const-string v8, "is_notification"

    const-string v9, "is_alarm"

    const-string v10, "bookmark"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 1422
    const-string/jumbo v0, "theme_"

    sput-object v0, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    .line 1427
    const-string v0, "/data/overlays/media/"

    sput-object v0, Landroid/media/RingtoneManager;->OPEN_THEME_DIRECTORY:Ljava/lang/String;

    .line 1574
    const/4 v0, 0x0

    sput-object v0, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 1575
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    .line 1576
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    .line 1577
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    .line 1578
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;Z)V

    .line 299
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "includeParentRingtones"    # Z

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 286
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 312
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 313
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 314
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 315
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 316
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;Z)V

    .line 327
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeParentRingtones"    # Z

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 286
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 340
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 341
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 342
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 343
    return-void
.end method

.method private static blacklist checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1716
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1717
    .local v1, "settingKey":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v2

    .line 1718
    .local v2, "settingKeyPath":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_a

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1722
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1723
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1722
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, "settingValue":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1725
    return v3

    .line 1728
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone value : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RingtoneManager"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1730
    .local v12, "ringtoneUri":Landroid/net/Uri;
    invoke-static {v12}, Landroid/media/RingtoneManager;->isMediaProviderUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v12}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 1734
    :cond_2
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    const/4 v13, 0x0

    if-gtz v0, :cond_3

    .line 1740
    return v13

    .line 1743
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1744
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1743
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1745
    .local v14, "ringtonePath":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 1746
    const-string v0, "Ringtone path is null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return v3

    .line 1751
    :cond_4
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v6, "path"

    invoke-static {v0, v6}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1753
    .local v15, "absolutePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1754
    .local v16, "resolver":Landroid/content/ContentResolver;
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 1755
    .local v8, "projection":[Ljava/lang/String;
    const-string v17, "_data=?"

    .line 1757
    .local v17, "where":Ljava/lang/String;
    :try_start_0
    const-string v9, "_data=?"

    new-array v10, v3, [Ljava/lang/String;

    aput-object v15, v10, v13

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 1759
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1760
    const-string v0, "path and URI match to each other "

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    nop

    .line 1763
    if-eqz v6, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1761
    :cond_5
    return v3

    .line 1757
    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "settingKey":Ljava/lang/String;
    .end local v2    # "settingKeyPath":Ljava/lang/String;
    .end local v4    # "settingValue":Ljava/lang/String;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v12    # "ringtoneUri":Landroid/net/Uri;
    .end local v14    # "ringtonePath":Ljava/lang/String;
    .end local v15    # "absolutePath":Ljava/lang/String;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "where":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    :cond_6
    :goto_0
    throw v7

    .line 1763
    .restart local v1    # "settingKey":Ljava/lang/String;
    .restart local v2    # "settingKeyPath":Ljava/lang/String;
    .restart local v4    # "settingValue":Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v12    # "ringtoneUri":Landroid/net/Uri;
    .restart local v14    # "ringtonePath":Ljava/lang/String;
    .restart local v15    # "absolutePath":Ljava/lang/String;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "where":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1766
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_8
    nop

    .line 1767
    const-string v0, "path and URI don\'t match"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v13

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return v3

    .line 1731
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v14    # "ringtonePath":Ljava/lang/String;
    .end local v15    # "absolutePath":Ljava/lang/String;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "where":Ljava/lang/String;
    :cond_9
    :goto_1
    return v3

    .line 1719
    .end local v4    # "settingValue":Ljava/lang/String;
    .end local v12    # "ringtoneUri":Landroid/net/Uri;
    :cond_a
    :goto_2
    return v3
.end method

.method private static greylist-max-o constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 701
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 707
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 710
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 715
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1284
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1283
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RingtoneManager"

    const-string v2, "Unable to create package context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist dumpCallStack(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .line 1905
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "caller":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1908
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, " u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1909
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1911
    const-string v3, " URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1912
    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1913
    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1914
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1917
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v3

    .line 1919
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->recordRingtoneChanger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    goto :goto_0

    .line 1920
    :catch_0
    move-exception v4

    .line 1921
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RingtoneManager"

    const-string v6, "Unable to dumpCallStack."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist ensureDefaultRingtones(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1302
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget v4, v1, v3

    .line 1313
    .local v4, "type":I
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultRingtoneSetting(I)Ljava/lang/String;

    move-result-object v5

    .line 1314
    .local v5, "setting":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1315
    move-object/from16 v11, p0

    goto/16 :goto_2

    .line 1319
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultRingtoneFilename(I)Ljava/lang/String;

    move-result-object v6

    .line 1320
    .local v6, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/media/RingtoneManager;->getQueryStringForType(I)Ljava/lang/String;

    move-result-object v7

    .line 1321
    .local v7, "whichAudio":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_display_name=? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1322
    .local v8, "where":Ljava/lang/String;
    sget-object v15, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1323
    .local v15, "baseUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/String;

    aput-object v6, v13, v2

    const-string v10, "1"

    const/4 v14, 0x1

    aput-object v10, v13, v14

    const/16 v16, 0x0

    move-object v10, v15

    move-object v12, v8

    move v0, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1327
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1329
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v15, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1328
    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1330
    .local v10, "ringtoneUri":Landroid/net/Uri;
    move-object/from16 v11, p0

    :try_start_1
    invoke-static {v11, v4, v10}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1323
    .end local v10    # "ringtoneUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1327
    :cond_1
    move-object/from16 v11, p0

    .line 1333
    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1302
    .end local v4    # "type":I
    .end local v5    # "setting":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "whichAudio":Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v15    # "baseUri":Landroid/net/Uri;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1323
    .restart local v4    # "type":I
    .restart local v5    # "setting":Ljava/lang/String;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v7    # "whichAudio":Ljava/lang/String;
    .restart local v8    # "where":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "baseUri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    :goto_3
    move-object v1, v0

    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v1

    .line 1335
    .end local v4    # "type":I
    .end local v5    # "setting":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "whichAudio":Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v15    # "baseUri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v11, p0

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x80
        0x100
    .end array-data
.end method

.method private blacklist excludedRingtonesWhereClauseForCSC()Ljava/lang/String;
    .locals 6

    .line 1844
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getExcludedRingtoneTitles()Ljava/util/List;

    move-result-object v0

    .line 1845
    .local v0, "excludedRingtones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1846
    const-string v1, ""

    return-object v1

    .line 1849
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1850
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1852
    .local v3, "displayName":Ljava/lang/String;
    const-string v4, "_display_name"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    const-string v4, "!="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    const-string v4, " and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    .end local v3    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 1858
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1859
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getActualAchRingtoneUriIfAvailable(Landroid/content/Context;Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2040
    const/4 v0, 0x0

    .line 2042
    .local v0, "ringtoneUri":Landroid/net/Uri;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2043
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2045
    :cond_0
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 2046
    .local v1, "userContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/media/RingtoneManager;->isAchAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2047
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2048
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2050
    :cond_1
    nop

    .line 2051
    const/16 v2, 0x100

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2050
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2052
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2055
    :cond_2
    move-object v0, p1

    .line 2058
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static whitelist getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActualDefaultRingtoneUri  type    :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    .line 853
    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 855
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 856
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 855
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_2
    invoke-static {v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    .line 863
    .local v3, "cpUserid":I
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 864
    .local v4, "ctUserid":I
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-ne v3, v4, :cond_4

    .line 867
    invoke-static {v1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 876
    .end local v3    # "cpUserid":I
    .end local v4    # "ctUserid":I
    :cond_4
    return-object v1
.end method

.method public static greylist-max-o getCacheForType(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .line 1115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getCacheForType(II)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I
    .param p1, "userId"    # I

    .line 1120
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1121
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1123
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1126
    sget-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    .line 1129
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE2_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 1131
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND2_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2021
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p0
.end method

.method private static blacklist getDefaultRingtoneFilename(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1351
    sparse-switch p0, :sswitch_data_0

    .line 1359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1357
    :sswitch_0
    const-string v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1356
    :sswitch_1
    const-string v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1354
    :sswitch_2
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1353
    :sswitch_3
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1352
    :sswitch_4
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getDefaultRingtoneSetting(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1338
    sparse-switch p0, :sswitch_data_0

    .line 1346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1344
    :sswitch_0
    const-string v0, "notification_sound_2_set"

    return-object v0

    .line 1343
    :sswitch_1
    const-string v0, "ringtone_2_set"

    return-object v0

    .line 1341
    :sswitch_2
    const-string v0, "alarm_alert_set"

    return-object v0

    .line 1340
    :sswitch_3
    const-string v0, "notification_sound_set"

    return-object v0

    .line 1339
    :sswitch_4
    const-string v0, "ringtone_set"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getDefaultSettingSound(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .line 1581
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1582
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    .line 1584
    :cond_0
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1

    .line 1585
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    return-object v0

    .line 1586
    :cond_1
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    .line 1587
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    return-object v0

    .line 1588
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 1589
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    return-object v0

    .line 1591
    :cond_3
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_4

    .line 1592
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    return-object v0

    .line 1594
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1606
    .local v1, "defaultSoundTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1608
    .local v2, "omcSoundFile":Ljava/lang/String;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const-string v5, "ro.config.ringtone"

    const-string v6, "is_ringtone"

    const-string v7, "RingtoneManager"

    if-eqz v3, :cond_1

    .line 1609
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1610
    return-object v3

    .line 1612
    :cond_0
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1615
    :cond_1
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_4

    .line 1616
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 1617
    return-object v3

    .line 1619
    :cond_2
    const-string v3, "ro.config.ringtone_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1620
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1621
    const-string v3, "ro.config.ringtone_2 is not set"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1625
    :cond_4
    and-int/lit8 v3, p1, 0x2

    const-string v5, "is_notification"

    const-string v8, "ro.config.notification_sound"

    if-eqz v3, :cond_6

    .line 1626
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    if-eqz v3, :cond_5

    .line 1627
    return-object v3

    .line 1629
    :cond_5
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1631
    :cond_6
    and-int/lit16 v3, p1, 0x100

    if-eqz v3, :cond_9

    .line 1632
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 1633
    return-object v3

    .line 1635
    :cond_7
    const-string v3, "ro.config.notification_sound_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1636
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1637
    const-string v3, "ro.config.notification_sound_2 is not set"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1642
    :cond_9
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_17

    .line 1643
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    if-eqz v3, :cond_a

    .line 1644
    return-object v3

    .line 1646
    :cond_a
    const-string v3, "ro.config.alarm_alert"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    const-string v3, "is_alarm"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    :goto_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getOMCRingtonePropertyName(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1656
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1657
    move-object v1, v2

    .line 1661
    :cond_b
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    .line 1662
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1664
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default ringtone/notification sound is :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v3, 0x0

    .line 1667
    .local v3, "internalCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1670
    .local v5, "tempUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1673
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " like \'%/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".___\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string/jumbo v13, "title_key"

    .line 1670
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v8

    .line 1677
    if-nez v3, :cond_e

    .line 1678
    nop

    .line 1707
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1678
    :cond_d
    return-object v4

    .line 1681
    :cond_e
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1683
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1684
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1685
    .local v8, "_id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v5, v4

    .line 1687
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_f

    .line 1688
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    .line 1690
    :cond_f
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_10

    .line 1691
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto :goto_2

    .line 1692
    :cond_10
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_11

    .line 1693
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto :goto_2

    .line 1694
    :cond_11
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_12

    .line 1695
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto :goto_2

    .line 1697
    :cond_12
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_13

    .line 1698
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    .line 1701
    :cond_13
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1702
    nop

    .end local v8    # "_id":J
    goto :goto_1

    .line 1703
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default ringtone/notification\'s uri found : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    if-eqz v3, :cond_15

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_5

    .line 1704
    :catch_0
    move-exception v4

    .line 1705
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "Can\'t read ro.config value"

    invoke-static {v7, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1707
    nop

    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_15

    goto :goto_3

    .line 1709
    :cond_15
    :goto_4
    return-object v5

    .line 1707
    :goto_5
    if-eqz v3, :cond_16

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1708
    :cond_16
    throw v4

    .line 1650
    .end local v3    # "internalCursor":Landroid/database/Cursor;
    .end local v5    # "tempUri":Landroid/net/Uri;
    :cond_17
    return-object v4
.end method

.method public static whitelist getDefaultType(Landroid/net/Uri;)I
    .locals 3
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 1157
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 1158
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1159
    return v0

    .line 1160
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1161
    return v2

    .line 1162
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1163
    const/4 v0, 0x2

    return v0

    .line 1164
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1165
    const/4 v0, 0x4

    return v0

    .line 1167
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1168
    const/16 v0, 0x80

    return v0

    .line 1169
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1170
    return v2

    .line 1171
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1172
    const/16 v0, 0x100

    return v0

    .line 1175
    :cond_6
    return v0
.end method

.method public static whitelist getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .line 1189
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1190
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 1191
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1192
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1193
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1194
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 1196
    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    .line 1197
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1198
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 1199
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1202
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getExcludedRingtoneTitles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1831
    .local v0, "excludeRingtones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1832
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1834
    .local v2, "audioService":Landroid/media/IAudioService;
    nop

    .line 1835
    :try_start_0
    iget v3, p0, Landroid/media/RingtoneManager;->mType:I

    and-int/lit16 v3, v3, 0x102

    if-eqz v3, :cond_0

    .line 1836
    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 1834
    :goto_0
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getExcludedRingtoneTitles(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1839
    goto :goto_1

    .line 1837
    :catch_0
    move-exception v3

    .line 1838
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RingtoneManager"

    const-string v5, "Unable to get excluded ringtones."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v0
.end method

.method private static final greylist-max-o getExternalDirectoryForType(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 1057
    sparse-switch p0, :sswitch_data_0

    .line 1067
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ringtone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :sswitch_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    return-object v0

    .line 1063
    :sswitch_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    return-object v0

    .line 1060
    :sswitch_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .line 650
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 652
    invoke-static {v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 653
    invoke-direct {p0}, Landroid/media/RingtoneManager;->excludedRingtonesWhereClauseForCSC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 655
    .local v0, "res":Landroid/database/Cursor;
    new-instance v1, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method private greylist-max-o getMediaRingtones()Landroid/database/Cursor;
    .locals 3

    .line 659
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 660
    .local v0, "res":Landroid/database/Cursor;
    new-instance v1, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method private greylist-max-r getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 667
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 669
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 667
    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOMCRingtonePropertyName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 1869
    const-string v0, ""

    .line 1870
    .local v0, "propName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1871
    const-string v0, "persist.sys.omc.ringtone"

    goto :goto_0

    .line 1872
    :cond_0
    const/16 v1, 0x80

    if-ne p0, v1, :cond_1

    .line 1873
    const-string v0, "persist.sys.omc.ringtone_2"

    goto :goto_0

    .line 1874
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 1875
    const-string v0, "persist.sys.omc.notification"

    goto :goto_0

    .line 1876
    :cond_2
    const/16 v1, 0x100

    if-ne p0, v1, :cond_3

    .line 1877
    const-string v0, "persist.sys.omc.notification_2"

    goto :goto_0

    .line 1878
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 1879
    const-string v0, "persist.sys.omc.alarm"

    .line 1881
    :cond_4
    :goto_0
    return-object v0
.end method

.method private blacklist getOpenThemeRingtone()Landroid/database/Cursor;
    .locals 11

    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, "themeCursor":Landroid/database/MatrixCursor;
    iget-object v1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    const v2, 0x1040c2b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "themeTitle":Ljava/lang/String;
    iget v2, p0, Landroid/media/RingtoneManager;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1949
    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1950
    const-string v2, "is_alarm"

    .local v2, "column":Ljava/lang/String;
    goto :goto_1

    .line 1952
    .end local v2    # "column":Ljava/lang/String;
    :cond_1
    const-string v2, "is_ringtone"

    .restart local v2    # "column":Ljava/lang/String;
    goto :goto_1

    .line 1948
    .end local v2    # "column":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v2, "is_notification"

    .line 1954
    .restart local v2    # "column":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_display_name like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\') and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1957
    .local v3, "dbWhere":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v10

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    .local v4, "tempCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_6

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1960
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1962
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v5

    .line 1963
    array-length v5, v10

    new-array v5, v5, [Ljava/lang/String;

    .line 1964
    .local v5, "themeColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    sget-object v7, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 1965
    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1966
    aput-object v1, v5, v6

    goto :goto_3

    .line 1968
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1964
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1971
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1957
    .end local v5    # "themeColumns":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "themeCursor":Landroid/database/MatrixCursor;
    .end local v1    # "themeTitle":Ljava/lang/String;
    .end local v2    # "column":Ljava/lang/String;
    .end local v3    # "dbWhere":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RingtoneManager;
    :cond_5
    :goto_4
    throw v5

    .line 1973
    .restart local v0    # "themeCursor":Landroid/database/MatrixCursor;
    .restart local v1    # "themeTitle":Ljava/lang/String;
    .restart local v2    # "column":Ljava/lang/String;
    .restart local v3    # "dbWhere":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/RingtoneManager;
    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1975
    .end local v4    # "tempCursor":Landroid/database/Cursor;
    :cond_7
    goto :goto_6

    .line 1973
    :catch_0
    move-exception v4

    .line 1974
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "RingtoneManager"

    const-string v6, "DB exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1976
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_6
    if-eqz v0, :cond_8

    new-instance v4, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v0, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_7

    .line 1977
    :cond_8
    const/4 v4, 0x0

    .line 1976
    :goto_7
    return-object v4
.end method

.method private greylist-max-o getParentProfileRingtones()Landroid/database/Cursor;
    .locals 7

    .line 499
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 500
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 501
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 502
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 503
    .local v2, "parentContext":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 507
    invoke-direct {p0, v2}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 508
    .local v3, "res":Landroid/database/Cursor;
    new-instance v4, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v4

    .line 512
    .end local v2    # "parentContext":Landroid/content/Context;
    .end local v3    # "res":Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .line 1885
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1889
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1890
    :catch_0
    move-exception v1

    .line 1891
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    return-object v0

    .line 1886
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static blacklist getQueryStringForType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 1364
    const-string v0, "is_notification"

    const-string v1, "is_ringtone"

    sparse-switch p0, :sswitch_data_0

    .line 1373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1371
    :sswitch_0
    return-object v0

    .line 1370
    :sswitch_1
    return-object v1

    .line 1367
    :sswitch_2
    return-object v1

    .line 1366
    :sswitch_3
    return-object v0

    .line 1365
    :sswitch_4
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 761
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static greylist getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .line 798
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "seek"    # I

    .line 1443
    :try_start_0
    new-instance v0, Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1444
    .local v0, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 1445
    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1447
    :cond_0
    if-ltz p3, :cond_1

    .line 1448
    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 1450
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    return-object v0

    .line 1452
    .end local v0    # "r":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-r getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 818
    :try_start_0
    new-instance v0, Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 819
    .local v0, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 821
    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 823
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    return-object v0

    .line 825
    .end local v0    # "r":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 782
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1539
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "setting":Ljava/lang/String;
    const v1, 0x1040bca

    if-nez v0, :cond_0

    .line 1541
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1544
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1544
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "ringtone":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1547
    const v1, 0x1040c2d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1550
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1551
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1552
    return-object v3

    .line 1555
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static greylist-max-o getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1096
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1097
    const-string v0, "ringtone"

    return-object v0

    .line 1098
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1099
    const-string v0, "notification_sound"

    return-object v0

    .line 1100
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1101
    const-string v0, "alarm_alert"

    return-object v0

    .line 1103
    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    .line 1104
    const-string v0, "ringtone_2"

    return-object v0

    .line 1105
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 1106
    const-string v0, "notification_sound_2"

    return-object v0

    .line 1109
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getSettingKeyForAbsolutePath(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 1516
    const-string v0, "_CONSTANT_PATH"

    .line 1517
    .local v0, "constantPath":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1531
    const/4 v1, 0x0

    return-object v1

    .line 1528
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_sound_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1526
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1523
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1521
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1519
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getSyncHapticDbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "soundType"    # Ljava/lang/String;

    .line 962
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const-string/jumbo v0, "sync_vibration_with_ringtone"

    return-object v0

    .line 964
    :cond_0
    const-string v0, "ringtone_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    const-string/jumbo v0, "sync_vibration_with_ringtone_2"

    return-object v0

    .line 966
    :cond_1
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 967
    const-string v0, "notification_sound_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 970
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 968
    :cond_3
    :goto_0
    const-string/jumbo v0, "sync_vibration_with_notification"

    return-object v0
.end method

.method private static blacklist getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 554
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->isOpenThemeRingtone(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 556
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 555
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 557
    .local v0, "uri":Landroid/net/Uri;
    return-object v0

    .line 560
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 561
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 560
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 562
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 622
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 627
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 630
    :cond_0
    return-object v1
.end method

.method private static greylist-max-o getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 634
    if-eqz p1, :cond_1

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 640
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 642
    return-object v0

    .line 644
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 1272
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static whitelist hasHapticChannels(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1261
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static final greylist hidden_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;
    .locals 1

    .line 1900
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    return-object v0
.end method

.method private static blacklist isAchAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2028
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioManager;->isCurrentHapticPlaybackSupported(Z)Z

    move-result v1

    .line 2029
    .local v1, "hapticPlaybackSupported":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sync_vibration_with_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2031
    .local v2, "syncWithNotiSettings":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v0, v4

    :cond_1
    return v0
.end method

.method public static whitelist isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1144
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isExternalRingtoneUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 981
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isInternalRingtoneUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 977
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method protected static blacklist isMediaProviderUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1773
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1774
    .local v0, "uriWithoutUserId":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1774
    :goto_0
    return v1
.end method

.method private static blacklist isOpenThemeRingtone(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 1981
    const v0, 0x1040c2b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, "themeTitle":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1983
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1986
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1984
    :cond_1
    :goto_0
    return v2
.end method

.method private static greylist-max-o isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone"    # Landroid/net/Uri;
    .param p1, "storage"    # Landroid/net/Uri;

    .line 985
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 986
    .local v0, "uriWithoutUserId":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 986
    :goto_0
    return v1
.end method

.method public static whitelist openDefaultRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1220
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 1221
    .local v0, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v1

    .line 1222
    .local v1, "cacheUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1223
    .local v2, "actualUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1225
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1226
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    const-string v5, "r"

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {v3, v1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1228
    if-eqz v4, :cond_0

    .line 1229
    return-object v4

    .line 1232
    :cond_0
    if-eqz v2, :cond_1

    .line 1233
    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1235
    :cond_1
    return-object v4
.end method

.method private static greylist-max-o openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open directly; attempting failover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RingtoneManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1084
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1086
    .local v2, "player":Landroid/media/IRingtonePlayer;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-interface {v2, p1}, Landroid/media/IRingtonePlayer;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1087
    :catch_1
    move-exception v3

    .line 1088
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private greylist-max-o query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 731
    iget-object v6, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .line 740
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 741
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 743
    :cond_0
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist saveAbsolutePath(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 1461
    const-string v0, "_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save path type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1463
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    .local v3, "cs":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1470
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1471
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1472
    .local v0, "index":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1473
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "path"

    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1476
    .local v5, "absolutePath":Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v6

    .line 1477
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 1476
    invoke-static {v1, v6, v7, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    .end local v0    # "index":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "absolutePath":Landroid/net/Uri;
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1480
    .end local v3    # "cs":Landroid/database/Cursor;
    :cond_1
    goto :goto_3

    .line 1463
    .restart local v3    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1466
    :cond_2
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1478
    if-eqz v3, :cond_3

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1467
    :cond_3
    return-void

    .line 1463
    :goto_1
    if-eqz v3, :cond_4

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1478
    .end local v3    # "cs":Landroid/database/Cursor;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAbsolutePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static whitelist semGetDefaultRingtoneTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1571
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSec"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 1790
    :try_start_0
    new-instance v0, Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1791
    .local v0, "r":Landroid/media/Ringtone;
    if-ltz p1, :cond_0

    .line 1792
    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 1794
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    return-object v0

    .line 1796
    .end local v0    # "r":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 890
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 896
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.sec.android.application.csc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "RingtoneManager"

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 898
    const-string v2, "setActualDefaultRingtoneUri userId is in sub user from CscService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void

    .line 903
    :cond_1
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 904
    invoke-static {p2}, Landroid/media/RingtoneManager;->isMediaProviderUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    goto/16 :goto_3

    .line 909
    :cond_2
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v2

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 909
    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 913
    invoke-static {p2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 914
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {p2, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 916
    :cond_3
    nop

    .line 917
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 916
    invoke-static {v1, v0, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 920
    const-string/jumbo v2, "setRingtone"

    invoke-static {p0, v2, p1, p2}, Landroid/media/RingtoneManager;->dumpCallStack(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 925
    if-eqz p2, :cond_9

    .line 926
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v2

    .line 927
    .local v2, "cacheUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 929
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    if-eqz v5, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_5
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 932
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_6
    goto :goto_2

    .line 927
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "cacheUri":Landroid/net/Uri;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_7
    :goto_0
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "cacheUri":Landroid/net/Uri;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "cacheUri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_8
    :goto_1
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0

    .line 930
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "cacheUri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 931
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cache ringtone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .end local v2    # "cacheUri":Landroid/net/Uri;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    .line 935
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->saveAbsolutePath(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 938
    :cond_a
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    if-eqz v2, :cond_b

    .line 939
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->turnOffSyncHapticOnCscSounds(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 941
    :cond_b
    return-void

    .line 905
    :cond_c
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid uri type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private greylist-max-o setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .line 674
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 675
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 679
    :cond_0
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_3

    .line 684
    :cond_2
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 688
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_4
    return-void
.end method

.method public static blacklist setRingtonesAsInitValue(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1488
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1489
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    goto :goto_0

    .line 1491
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    .line 1492
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto :goto_0

    .line 1493
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 1494
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto :goto_0

    .line 1495
    :cond_2
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 1496
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto :goto_0

    .line 1498
    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 1499
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    .line 1502
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1503
    .local v0, "defaultUri":Landroid/net/Uri;
    if-nez v0, :cond_5

    .line 1504
    return-void

    .line 1506
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1507
    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1508
    return-void
.end method

.method public static blacklist shouldMigrationThemeSoundFile(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 2000
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v0

    .line 2001
    .local v0, "settingKeyPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2002
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2003
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2002
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, "ringtonePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2005
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "path"

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2006
    .local v2, "absolutePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldMigrationThemeSoundFile absolutePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RingtoneManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2008
    sget-object v3, Landroid/media/RingtoneManager;->OPEN_THEME_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    .line 2009
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2010
    const/4 v3, 0x1

    return v3

    .line 2015
    .end local v1    # "ringtonePath":Ljava/lang/String;
    .end local v2    # "absolutePath":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist turnOffSyncHapticOnCscSounds(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "setting"    # Ljava/lang/String;

    .line 945
    const-string v0, "RingtoneManager"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.sec.android.application.csc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    const-string/jumbo v1, "sound has not haptic channel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-static {p2}, Landroid/media/RingtoneManager;->getSyncHapticDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "syncDbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turn off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .end local v1    # "syncDbName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 7
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1030
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1032
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    :cond_0
    invoke-static {p2}, Landroid/media/RingtoneManager;->getExternalDirectoryForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "subdirectory":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 1043
    invoke-static {v2, p1}, Landroid/media/Utils;->getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1042
    invoke-static {v2, v1, v3, v0}, Landroid/media/Utils;->getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1047
    .local v2, "outFile":Ljava/io/File;
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1048
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1049
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v4    # "output":Ljava/io/OutputStream;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1053
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_1
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1047
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/media/RingtoneManager;
    .end local p1    # "fileUri":Landroid/net/Uri;
    .end local p2    # "type":I
    :goto_0
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "mimeType":Ljava/lang/String;
    .restart local v1    # "subdirectory":Ljava/lang/String;
    .restart local v2    # "outFile":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/media/RingtoneManager;
    .restart local p1    # "fileUri":Landroid/net/Uri;
    .restart local p2    # "type":I
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4

    .line 1033
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ringtone file must have MIME type \"audio/*\". Given file has MIME type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External storage is not mounted. Unable to install ringtones."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addCustomRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    invoke-virtual {p0, p1, p2}, Landroid/media/RingtoneManager;->addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCursor()Landroid/database/Cursor;
    .locals 4

    .line 473
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v0, "ringtoneCursors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getOpenThemeRingtone()Landroid/database/Cursor;

    move-result-object v1

    .line 482
    .local v1, "themeCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 483
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v1    # "themeCursor":Landroid/database/Cursor;
    :cond_1
    iget-boolean v1, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    if-eqz v1, :cond_2

    .line 488
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getParentProfileRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 489
    .local v1, "parentRingtonesCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v1    # "parentRingtonesCursor":Landroid/database/Cursor;
    :cond_2
    new-instance v1, Lcom/android/internal/database/SortCursor;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    const-string/jumbo v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v1
.end method

.method public whitelist getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I

    .line 523
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 528
    return-object v0
.end method

.method public whitelist getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 574
    const-string v0, "RingtoneManager"

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    .line 576
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 577
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 580
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 581
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 586
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 587
    .local v3, "ringtoneId":J
    iget-object v5, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, p1, v6, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "ringtoneTitle":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRingtonePosition uri :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    .line 593
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 594
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    .line 608
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "ringtoneId":J
    .end local v5    # "ringtoneTitle":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 582
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRingtonePosition - filter invalid case "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    return v1

    .line 606
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "NumberFormatException while getting ringtone position, returning -1"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return v1
.end method

.method public whitelist getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .line 541
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    nop

    .line 549
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 542
    :cond_1
    :goto_0
    return-object v0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "RingtoneManager"

    const-string v3, "Unexpected Exception has been catched."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    return-object v0
.end method

.method public whitelist getStopPreviousRingtone()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public whitelist hasHapticChannels(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 1246
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public whitelist inferStreamType()I
    .locals 3

    .line 376
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 387
    packed-switch v0, :pswitch_data_0

    .line 393
    :pswitch_0
    return v2

    .line 378
    :sswitch_0
    return v1

    .line 380
    :sswitch_1
    return v2

    .line 389
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 391
    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist semGetRingtone(II)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I
    .param p2, "seek"    # I

    .line 1815
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 1816
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1819
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 1820
    return-object v0
.end method

.method public whitelist setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    if-eqz p1, :cond_0

    .line 450
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    return-void
.end method

.method public whitelist setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .line 408
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 409
    return-void
.end method

.method public whitelist setType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 354
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 359
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 361
    and-int/lit16 v0, p1, 0x85

    if-eqz v0, :cond_0

    .line 362
    or-int/lit8 p1, p1, 0x5

    .line 365
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 366
    return-void

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopPreviousRingtone()V
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 425
    :cond_0
    return-void
.end method
