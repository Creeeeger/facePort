.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks$1;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks$1;->this$1:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

    invoke-direct {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks$1;->this$1:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    invoke-direct {v7, v6}, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-direct {v8, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->POWER_CONNECTION_EVENTS:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getLastFullChargeTime(Landroid/content/Context;)J

    move-result-wide v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_LEVEL_RECORD_EVENTS:Ljava/util/List;

    invoke-static {v6, v0, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getBatteryEvents(Landroid/content/Context;Ljava/util/Calendar;JLjava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isMainUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mPrivateUser:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mManagedProfileUser:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_0

    :cond_0
    move-wide v15, v9

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static/range {v15 .. v16}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getPeriodBatteryLevelData() startTimestamp="

    const-string v4, "DataProcessManager"

    invoke-static {v2, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v5, v0

    :goto_1
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->sFakeBatteryHistoryMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    move-object v14, v4

    move-object/from16 v17, v13

    move-object v13, v5

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object v0, v6

    move-wide v2, v15

    move-object v14, v4

    move-object/from16 v17, v13

    move-object v13, v5

    move-wide v4, v9

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getHistoryMapSinceLatestRecordBeforeQueryTimestamp(Landroid/content/Context;Ljava/util/Calendar;JJ)Ljava/util/Map;

    move-result-object v0

    :goto_2
    const/16 v18, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {v0, v6, v13, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    const-string v0, "getBatteryLevelData() returns null"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v5, v18

    goto :goto_5

    :cond_4
    new-instance v19, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v3, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    move-object/from16 v0, v19

    move-object v1, v6

    move-object v2, v13

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-wide v4, v15

    move-wide v6, v9

    move-object v9, v13

    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;JJLcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    move-object/from16 v5, v20

    goto :goto_5

    :cond_5
    :goto_4
    const-string v0, "batteryHistoryMap is null in getPeriodBatteryLevelData()"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {v0, v6, v13, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    goto :goto_3

    :goto_5
    invoke-static {v11, v12}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "execute getBatteryLevelData in %d/ms, batteryLevelRecordEvents.size=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getBatteryLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_8

    iget-object v1, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    const/4 v2, 0x0

    :goto_7
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    const/4 v4, 0x0

    :goto_8
    iget-object v5, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-gez v1, :cond_9

    goto :goto_9

    :cond_9
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-direct {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;-><init>(Ljava/util/Map;)V

    move-object/from16 v18, v1

    :goto_9
    return-object v18
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    return-void
.end method
