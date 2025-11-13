.class public final Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final POWER_CONNECTION_EVENTS:Ljava/util/List;

.field static sFakeBatteryHistoryMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final mAppUsageEventList:Ljava/util/List;

.field public mAppUsagePeriodMap:Ljava/util/Map;

.field public final mBatteryEventList:Ljava/util/List;

.field public final mBatteryHistoryMap:Ljava/util/Map;

.field public final mBatteryUsageSlotList:Ljava/util/List;

.field public final mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mHourlyBatteryLevelsPerDay:Ljava/util/List;

.field public mIsBatteryEventLoaded:Z

.field public mIsBatteryUsageSlotLoaded:Z

.field public mIsCurrentAppUsageLoaded:Z

.field public mIsCurrentBatteryHistoryLoaded:Z

.field public mIsDatabaseAppUsageLoaded:Z

.field public final mIsFromPeriodJob:Z

.field public final mLastFullChargeTimestamp:J

.field public final mRawStartTimestamp:J

.field public mShowScreenOnTime:Z

.field public mSystemAppsPackageNames:Ljava/util/Set;

.field public mSystemAppsUids:Ljava/util/Set;

.field public final mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;


# direct methods
.method public static -$$Nest$mgetSystemAppsPackageNames(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsPackageNames:Ljava/util/Set;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestSystemAppsPackageNames:Ljava/util/Set;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryUtil;->getSystemPackageNames(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsPackageNames:Ljava/util/Set;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsPackageNames:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public static -$$Nest$mgetSystemAppsUids(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsUids:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsUids:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsUids:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public static -$$Nest$mshouldLoadAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget v2, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mCurrentUserId:I

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "DataProcessManager"

    const-string v2, "shouldLoadAppUsageData: false, current user is locked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_1
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static -$$Nest$mtryToProcessAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "DataProcessor"

    const-string v2, "appUsageEventList is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_2
    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_8

    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v19, v1

    goto/16 :goto_4

    :cond_4
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v7, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-wide v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->USAGE_QUERY_BUFFER_HOURS:J

    sub-long v18, v5, v3

    add-long v3, v16, v3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide v23

    cmp-long v21, v23, v3

    if-lez v21, :cond_5

    goto :goto_3

    :cond_5
    cmp-long v21, v23, v18

    if-ltz v21, :cond_6

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v7, v22

    goto :goto_2

    :cond_7
    move-object/from16 v22, v7

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v1

    move-object v3, v13

    move-object v4, v10

    move-object/from16 v19, v1

    move-object v1, v7

    move v13, v8

    move-object/from16 v18, v22

    move-wide/from16 v7, v16

    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->buildAppUsagePeriodList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;JJ)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v13

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    goto :goto_1

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v19

    goto/16 :goto_0

    :cond_8
    move-object v1, v12

    :goto_5
    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToGenerateFinalDataAndApplyCallback()V

    :cond_9
    :goto_7
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_CONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_DISCONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->POWER_CONNECTION_EVENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;JJLcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;Ljava/util/List;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryUsageSlotList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsPackageNames:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsUids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsFromPeriodJob:Z

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mLastFullChargeTimestamp:J

    iput-object p8, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iput-object p9, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iput-object p10, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryUsageSlotList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsPackageNames:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mSystemAppsUids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsFromPeriodJob:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mLastFullChargeTimestamp:J

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    return-void
.end method


# virtual methods
.method public getAppUsageEventList()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    return-object p0
.end method

.method public getAppUsagePeriodMap()Ljava/util/Map;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    return-object p0
.end method

.method public getIsBatteryEventLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    return p0
.end method

.method public getIsCurrentAppUsageLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    return p0
.end method

.method public getIsCurrentBatteryHistoryLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    return p0
.end method

.method public getIsDatabaseAppUsageLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    return p0
.end method

.method public getShowScreenOnTime()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    return p0
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsFromPeriodJob:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/UserManager;->isMainUser()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mPrivateUser:Landroid/content/pm/UserInfo;

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mManagedProfileUser:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public final tryToGenerateFinalDataAndApplyCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
