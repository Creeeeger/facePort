.class public final Lcom/android/settings/localepicker/NotificationController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/localepicker/NotificationController;


# instance fields
.field public final mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/localepicker/NotificationController;->mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/localepicker/NotificationController;
    .locals 2

    const-class v0, Lcom/android/settings/localepicker/NotificationController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/localepicker/NotificationController;->sInstance:Lcom/android/settings/localepicker/NotificationController;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/android/settings/localepicker/NotificationController;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/NotificationController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/localepicker/NotificationController;->sInstance:Lcom/android/settings/localepicker/NotificationController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/localepicker/NotificationController;->sInstance:Lcom/android/settings/localepicker/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDataManager()Lcom/android/settings/localepicker/LocaleNotificationDataManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/NotificationController;->mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    return-object p0
.end method

.method public final shouldTriggerNotification(ILjava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lcom/android/settings/localepicker/LocaleUtils;->isInSystemLocale(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/settings/localepicker/NotificationController;->mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->getNotificationInfo(Ljava/lang/String;)Lcom/android/settings/localepicker/NotificationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/settings/localepicker/NotificationInfo;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/localepicker/NotificationInfo;-><init>(Ljava/util/Set;IIJI)V

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->putNotificationInfo(Ljava/lang/String;Lcom/android/settings/localepicker/NotificationInfo;)V

    goto/16 :goto_3

    :cond_1
    iget-object v12, v3, Lcom/android/settings/localepicker/NotificationInfo;->mUidCollection:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x1

    iget v5, v3, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationCount:I

    iget v14, v3, Lcom/android/settings/localepicker/NotificationInfo;->mDismissCount:I

    const/4 v6, 0x2

    iget-wide v7, v3, Lcom/android/settings/localepicker/NotificationInfo;->mLastNotificationTimeMs:J

    iget v3, v3, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    if-ge v14, v6, :cond_5

    if-ge v5, v6, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v9

    rem-int/2addr v9, v6

    if-nez v9, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const-string v9, "android.localenotification.duration.threshold"

    const/16 v10, 0x2760

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    mul-int/lit8 v9, v9, -0x1

    const/16 v10, 0xc

    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v5, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-string v9, "notificationCount:"

    const-string v10, "NotificationController"

    invoke-static {v6, v9, v10}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v6, v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    long-to-int v3, v9

    :cond_4
    move/from16 v17, v3

    :goto_0
    move-wide v15, v7

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v17, v3

    move v6, v5

    goto :goto_0

    :goto_2
    new-instance v3, Lcom/android/settings/localepicker/NotificationInfo;

    move-object v11, v3

    move v13, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/settings/localepicker/NotificationInfo;-><init>(Ljava/util/Set;IIJI)V

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->putNotificationInfo(Ljava/lang/String;Lcom/android/settings/localepicker/NotificationInfo;)V

    if-le v6, v5, :cond_6

    move v2, v4

    :cond_6
    :goto_3
    return v2
.end method
