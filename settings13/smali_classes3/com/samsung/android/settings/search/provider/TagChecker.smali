.class public Lcom/samsung/android/settings/search/provider/TagChecker;
.super Ljava/lang/Object;
.source "TagChecker.java"


# static fields
.field private static final OPEN_URI:Landroid/net/Uri;

.field private static final SINGLE_URI:Landroid/net/Uri;

.field static final mWallpaperSettingsList:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceUsingPeriod:J

.field private final mUsageStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/TagChecker;->SINGLE_URI:Landroid/net/Uri;

    const-string v0, "content://com.msc.openprovider.openContentProvider/openData"

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/TagChecker;->OPEN_URI:Landroid/net/Uri;

    const-string v0, "android.wallpaper.settings_systemui_transparency"

    const-string v1, "lockscreen_wallpaper_transparent"

    const-string v2, "sub_display_system_wallpaper_transparency"

    const-string v3, "sub_display_lockscreen_wallpaper_transparency"

    .line 88
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/TagChecker;->mWallpaperSettingsList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getPeriodUsingDevice()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    .line 103
    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getUsageStats()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsList:Ljava/util/List;

    return-void
.end method

.method private checkFmmRemoteControlOn()Z
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 548
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "TagChecker"

    if-nez v1, :cond_1

    const-string v0, "There is no FMM package : ret = false"

    .line 549
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 553
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSamsungAccountSignedIn()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "There is no SA : ret = false"

    .line 554
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v2, v0

    .line 558
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkFmmRemoteControlOn() returns : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getAgeUsingSamsungAccountProfile()I
    .locals 8

    const-string v0, "TagChecker"

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "account_year"

    .line 274
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 277
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/search/provider/TagChecker;->SINGLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v7, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v7, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return p0

    :cond_0
    :try_start_1
    const-string p0, "Fail Getting SA Profile"

    .line 282
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Query Failed!"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    .line 289
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, -0x1

    return p0

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_2
    throw p0
.end method

.method private getBatteryLevel()I
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 362
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    return p0
.end method

.method private getCurrentAgeBasedOnSamsungAccountProfile()I
    .locals 3

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getAgeUsingSamsungAccountProfile()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 260
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 261
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getCurrentTime()I
    .locals 2

    .line 328
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 329
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNotificationsCount(I)I
    .locals 4

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v2, p1

    sub-long v2, v0, v2

    .line 341
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 345
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 347
    invoke-virtual {p0, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 348
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 353
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNotificationsCount = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getPeriodUsingDevice()J
    .locals 3

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "init_boot_date"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    sget-object v0, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    .line 230
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 232
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, p0, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "periodGap(Month) = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TagChecker"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getUsageStats()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 244
    iget-object v3, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 245
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v4, 0x1

    .line 245
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private isAutoFactoryResetOn()Z
    .locals 2

    .line 503
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_swipe_main_user"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isGameInLatest5Apps()Z
    .locals 4

    .line 369
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsList:Ljava/util/List;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 376
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/search/provider/TagChecker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/search/provider/TagChecker$1;-><init>(Lcom/samsung/android/settings/search/provider/TagChecker;)V

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move p0, v1

    :goto_0
    const/4 v2, 0x5

    if-ge p0, v2, :cond_3

    .line 384
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 385
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is Game package !"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private isListeningMusic()Z
    .locals 5

    .line 468
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    const/4 v0, -0x2

    .line 469
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 470
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TagChecker"

    if-eqz v0, :cond_0

    const-string p0, "getActiveSessionsForUser() is NULL"

    .line 471
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 474
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 481
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    :cond_3
    const-string p0, "isListeningMusic == TRUE"

    .line 482
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "isListeningMusic == FALSE"

    .line 487
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSPenTagTypeRandom(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "TagChecker"

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "pen_usage_detected_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 586
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 587
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 586
    invoke-static {p0, v1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    .line 588
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    .line 590
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, p0, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "periodGap(Month) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", initLocalDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentLocalDate: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const-string p0, "SPen TAG Type is Random"

    .line 595
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local date parse error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSamsungAccountSignedIn()Z
    .locals 1

    .line 510
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 511
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 513
    array-length p0, p0

    const-string v0, "TagChecker"

    if-lez p0, :cond_0

    const-string p0, "isHaveSA() - true"

    .line 514
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isHaveSA() - false"

    .line 517
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isSamsungHealthInLatest5Apps()Z
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mUsageStatsList:Ljava/util/List;

    .line 398
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 401
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/search/provider/TagChecker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/search/provider/TagChecker$2;-><init>(Lcom/samsung/android/settings/search/provider/TagChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move p0, v2

    :goto_0
    const/4 v1, 0x5

    if-ge p0, v1, :cond_2

    .line 409
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 410
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.shealth"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in latest 5 apps"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isSecure()Z
    .locals 3

    .line 453
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 455
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 456
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 458
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    or-int/2addr v1, p0

    .line 460
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockscreenSecure: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSetOpenTheme()Z
    .locals 1

    .line 422
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isTransferFromIOS()Z
    .locals 2

    .line 314
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "smartswitch_transfer_from_ios"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isTwoStepVerificationOff()Z
    .locals 6

    .line 526
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "Value"

    .line 529
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string p0, "two_step_verification_is_on"

    .line 530
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    .line 532
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/search/provider/TagChecker;->OPEN_URI:Landroid/net/Uri;

    const-string v3, "Key=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 533
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 534
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 532
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 536
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    :cond_1
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isUserChangedWallpapers()Z
    .locals 9

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 437
    sget-object v1, Lcom/samsung/android/settings/search/provider/TagChecker;->mWallpaperSettingsList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 438
    iget-object v7, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v5, :cond_0

    if-eq v6, v8, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p0, v5

    .line 444
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultTheme:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TagChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDefaultWallpaper: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-nez p0, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    return v3
.end method

.method private isUsingQuickLanuchCamera()Z
    .locals 2

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "double_tab_launch"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static supportSPenTag(Landroid/content/Context;)Z
    .locals 5

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pen_usage_detected_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "TagChecker"

    const-string v0, "Not support SPen TAG"

    .line 571
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getState(Ljava/lang/String;)I
    .locals 10

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.settings.intelligence.TAG_BRAND_NEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.settings.intelligence.TAG_PREVENT_LOST_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.settings.intelligence.TAG_FOR_PRIVACY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "com.samsung.android.settings.intelligence.TAG_SECURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "com.samsung.android.settings.intelligence.TAG_PERFORMANCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "com.samsung.android.settings.intelligence.TAG_INITIAL_CUSTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.samsung.android.settings.intelligence.TAG_MUSIC_HOLIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.samsung.android.settings.intelligence.TAG_BUTTON_CONTROL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    move v7, v1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.samsung.android.settings.intelligence.TAG_FOR_HEALTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.samsung.android.settings.intelligence.TAG_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.samsung.android.settings.intelligence.TAG_FOR_GAMING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_b
    const-string v0, "com.samsung.android.settings.intelligence.TAG_BATTERY_TROUBLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_c
    const-string v0, "com.samsung.android.settings.intelligence.TAG_INITIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v7, v2

    goto :goto_0

    :sswitch_d
    const-string v0, "com.samsung.android.settings.intelligence.TAG_SPEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v7, v4

    goto :goto_0

    :sswitch_e
    const-string v0, "com.samsung.android.settings.intelligence.TAG_EMERGENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_f
    const-string v0, "com.samsung.android.settings.intelligence.TAG_NIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    move v7, v5

    goto :goto_0

    :sswitch_10
    const-string v0, "com.samsung.android.settings.intelligence.TAG_HEARING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    move v7, v6

    goto :goto_0

    :sswitch_11
    const-string v0, "com.samsung.android.settings.intelligence.TAG_EYE_PROTECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    move v7, v3

    :goto_0
    const/16 p1, 0x15

    const-wide/16 v8, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->checkFmmRemoteControlOn()Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_12
    return v6

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSamsungAccountSignedIn()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isTwoStepVerificationOff()Z

    move-result p1

    if-eqz p1, :cond_13

    return v6

    :cond_13
    move v3, v6

    .line 166
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecureFolderActivated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_15

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_15

    return v6

    .line 172
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->checkFmmRemoteControlOn()Z

    move-result p1

    if-eqz p1, :cond_16

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_16

    return v6

    .line 178
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isAutoFactoryResetOn()Z

    move-result p0

    if-eqz p0, :cond_1e

    add-int/2addr v3, v6

    if-lt v3, v5, :cond_1e

    return v6

    .line 125
    :pswitch_2
    iget-wide v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    cmp-long p1, v0, v8

    if-ltz p1, :cond_17

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSecure()Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_17
    return v6

    .line 118
    :pswitch_3
    iget-wide v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    cmp-long p1, v0, v8

    if-ltz p1, :cond_18

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSetOpenTheme()Z

    move-result p1

    if-nez p1, :cond_18

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isUserChangedWallpapers()Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_18
    return v6

    .line 151
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isTransferFromIOS()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-wide v0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    cmp-long p1, v0, v8

    if-ltz p1, :cond_1a

    :cond_19
    iget-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isBixbyVoiceEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isUsingQuickLanuchCamera()Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_1a
    return v6

    .line 202
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getCurrentAgeBasedOnSamsungAccountProfile()I

    move-result p1

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSamsungHealthInLatest5Apps()Z

    move-result p0

    if-nez p0, :cond_1b

    const/16 p0, 0x37

    if-lt p1, p0, :cond_1e

    const/16 p0, 0x40

    if-gt p1, p0, :cond_1e

    :cond_1b
    return v6

    .line 139
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/search/provider/TagChecker;->getNotificationsCount(I)I

    move-result p1

    if-ge p1, v6, :cond_1c

    .line 140
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/search/provider/TagChecker;->getNotificationsCount(I)I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_1e

    :cond_1c
    return v6

    .line 197
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isGameInLatest5Apps()Z

    move-result p0

    if-eqz p0, :cond_1e

    return v6

    .line 192
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getBatteryLevel()I

    move-result p0

    const/16 p1, 0x28

    if-gt p0, p1, :cond_1e

    return v6

    .line 214
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/search/provider/TagChecker;->supportSPenTag(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSPenTagTypeRandom(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v6

    .line 113
    :pswitch_a
    iget-wide p0, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    cmp-long p0, p0, v8

    if-gez p0, :cond_1e

    return v6

    .line 186
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getCurrentTime()I

    move-result p0

    if-ge p0, p1, :cond_1d

    if-gt p0, v4, :cond_1e

    :cond_1d
    return v6

    .line 146
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isListeningMusic()Z

    move-result p0

    if-eqz p0, :cond_1e

    return v6

    .line 131
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->getCurrentTime()I

    move-result v0

    .line 132
    iget-wide v1, p0, Lcom/samsung/android/settings/search/provider/TagChecker;->mDeviceUsingPeriod:J

    cmp-long p0, v1, v8

    if-ltz p0, :cond_1f

    if-ge v0, p1, :cond_1f

    if-gt v0, v4, :cond_1e

    goto :goto_2

    :cond_1e
    :goto_1
    return v5

    :cond_1f
    :goto_2
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x4d448930 -> :sswitch_11
        -0x31edddd5 -> :sswitch_10
        -0x2767ff31 -> :sswitch_f
        -0x1838d938 -> :sswitch_e
        -0x9851bf1 -> :sswitch_d
        0x12c59e3b -> :sswitch_c
        0x1dbc119c -> :sswitch_b
        0x23d78e0e -> :sswitch_a
        0x25647a9f -> :sswitch_9
        0x25bf5c3b -> :sswitch_8
        0x27c44e39 -> :sswitch_7
        0x295304dc -> :sswitch_6
        0x38cb75f5 -> :sswitch_5
        0x3c5dfba7 -> :sswitch_4
        0x42b65580 -> :sswitch_3
        0x50020569 -> :sswitch_2
        0x53d17c61 -> :sswitch_1
        0x57d4f5ff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
