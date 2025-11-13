.class public final Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    const-string v2, "userid"

    const-string v0, "timestamp"

    const/4 v4, 0x1

    const-string v5, "No feature factory configured"

    const-string v6, "com.android.settings.battery.usage.provider"

    const-string v7, "content"

    const-string v8, "DatabaseUtils"

    const-string v9, "DataProcessManager"

    iget v10, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->$r8$classId:I

    packed-switch v10, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryUsageSlotList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getStartTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v11, v8, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsPackageNames(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v22

    iget-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsUids(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v23

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getAppUsageList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToBatteryDiffEntry(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getSystemUsageList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToBatteryDiffEntry(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getStartTimestamp()J

    move-result-wide v12

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getEndTimestamp()J

    move-result-wide v16

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getStartBatteryLevel()I

    move-result v18

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getEndBatteryLevel()I

    move-result v19

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getScreenOnTime()J

    move-result-wide v20

    const/16 v24, 0x0

    move-object v10, v15

    move-object/from16 p1, v4

    move-object v6, v14

    move-object v4, v15

    move-wide/from16 v14, v16

    move/from16 v16, v18

    move/from16 v17, v19

    move-wide/from16 v18, v20

    move-object/from16 v20, v8

    move-object/from16 v21, v6

    invoke-direct/range {v10 .. v24}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_2
    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v10, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    iget-object v12, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iget-object v13, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    iget-object v14, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsPackageNames(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v15

    iget-object v6, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsUids(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v16

    iget-object v11, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    invoke-static/range {v10 .. v16}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryDiffDataMap(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    sget-object v4, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v4

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "execute generateFinalDataAndApplyCallback size=%d in %d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsPackageNames(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v15

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mgetSystemAppsUids(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Set;

    move-result-object v16

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iget-wide v12, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    invoke-static/range {v10 .. v16}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryDiffData(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;JLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "execute loadAndApplyBatteryMapFromServiceOnly size=%d in %d/ms"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, [Ljava/lang/Void;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-wide v10, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mLastFullChargeTimestamp:J

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v5}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getBatteryUsageSlots for timestamp: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "BatteryUsageSlot"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v4, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadListFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12, v13}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getBatteryUsageSlots size=%d in %d/ms"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "execute loadBatteryUsageSlotList size=%d in %d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->POWER_CONNECTION_EVENTS:Ljava/util/List;

    invoke-static {v0, v4, v5, v6, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getBatteryEvents(Landroid/content/Context;Ljava/util/Calendar;JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "execute loadPowerConnectionBatteryEventList size=%d in %d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_3
    move-object/from16 v4, p1

    check-cast v4, [Ljava/lang/Void;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mshouldLoadAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "not loadDatabaseAppUsageList"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v11, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget-object v11, v11, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    sget-object v12, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v14

    move-object/from16 v16, v9

    iget-wide v9, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sget-wide v17, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->USAGE_QUERY_BUFFER_HOURS:J

    sub-long v9, v9, v17

    new-instance v1, Ljava/lang/StringBuilder;

    move-wide/from16 v17, v3

    const-string v3, "sixDaysAgoTimestamp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "AppUsageEvent"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v5, v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadListFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12, v13}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAppUsageEventForUser userId=%s size=%d in %d/ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v17 .. v18}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "execute loadDatabaseAppUsageList size=%d in %d/ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v16

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v3

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCurrentBatteryHistoryMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "execute loadCurrentBatteryHistoryMap size=%d in %d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mshouldLoadAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "not loadCurrentAppUsageList"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_17

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "DataProcessor"

    if-eqz v0, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v15, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    sget-object v20, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static {v15}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v15

    if-nez v15, :cond_6

    move-object/from16 v31, v6

    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    move-object/from16 p1, v12

    move-object/from16 v30, v13

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    invoke-static/range {v20 .. v20}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v9

    move-object/from16 p1, v12

    iget-wide v11, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v14}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move-object/from16 v31, v6

    move-object/from16 v30, v13

    goto/16 :goto_7

    :cond_8
    int-to-long v0, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v30, v13

    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v13, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    move-object/from16 v31, v6

    const-string v6, "appUsageLatestTimestamp"

    invoke-virtual {v13, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v2, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadLongFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v20 .. v21}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v6, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAppUsageStartTimestampOfUser() userId=%d latestTimestamp=%s in %d/ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    add-long v0, v22, v0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sget-object v18, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move/from16 v23, v14

    :try_start_0
    invoke-interface/range {v18 .. v24}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "Error fetching usage events: "

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v32

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v4, v1, v6, v9}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "getAppUsageEventsForUser(): %d from %d to %d in %d/ms"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to load app usage event for user :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " because locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_8
    invoke-static/range {v25 .. v26}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getAppUsageEventsForUser() for user %d in %d/ms"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-nez v0, :cond_a

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserIdsSeries:Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mCurrentUserId:I

    if-ne v14, v0, :cond_9

    goto/16 :goto_4

    :cond_9
    move-object/from16 v4, p1

    goto :goto_a

    :cond_a
    move-object/from16 v1, p0

    int-to-long v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object v12, v4

    move-object/from16 v9, v27

    move-wide/from16 v10, v28

    move-object/from16 v13, v30

    move-object/from16 v6, v31

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    move-object v4, v12

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/usage/UsageEvents;

    :goto_c
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v14

    if-eqz v14, :cond_16

    new-instance v14, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v14}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v15

    move-object/from16 p1, v4

    const/16 v4, 0x17

    move-object/from16 v20, v5

    const/4 v5, 0x1

    if-eq v15, v5, :cond_c

    if-eq v15, v4, :cond_c

    const/16 v5, 0x1a

    if-eq v15, v5, :cond_c

    :goto_d
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-wide/from16 v23, v8

    move-object/from16 v25, v13

    const-wide/16 v3, 0x1

    goto/16 :goto_16

    :cond_c
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v5, v4, v14}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Ignoring a usage event with task root class name %s, (timestamp=%d, type=%d)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_d
    sget-object v5, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v4, "ConvertUtils"

    if-nez v15, :cond_e

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    const-string v14, "Ignoring a usage event with null package name (timestamp=%d, type=%d)"

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-wide/from16 v23, v8

    move-object/from16 v25, v13

    :goto_e
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_e
    move-object/from16 v22, v2

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v2

    move-wide/from16 v23, v8

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    move-object/from16 v25, v13

    iget-object v13, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v13, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v13, v8, v9}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11

    const/16 v9, 0x17

    if-eq v8, v9, :cond_10

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_f

    sget-object v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->UNKNOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    goto :goto_f

    :cond_f
    sget-object v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    goto :goto_f

    :cond_10
    sget-object v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    goto :goto_f

    :cond_11
    sget-object v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    :goto_f
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v9, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v9, v8}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;)V

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v8, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v8, v15}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v8, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetUserId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v8

    const/4 v13, 0x1

    if-eq v8, v13, :cond_12

    const/16 v9, 0x17

    if-eq v8, v9, :cond_12

    move-object/from16 v21, v3

    :goto_10
    const/4 v8, 0x0

    goto :goto_13

    :cond_12
    :try_start_1
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_13

    const-string v9, "Null task root in event with timestamp %d, type=%d, package %s"

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v21

    move-object/from16 p0, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v3

    :try_start_2
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v13, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_1
    move-object/from16 v21, v3

    goto :goto_12

    :cond_13
    move-object/from16 v21, v3

    move-object/from16 p0, v8

    :goto_11
    move-object/from16 v8, p0

    goto :goto_13

    :catch_2
    :goto_12
    const-string v3, "Failed to call Event#getTaskRootPackageName()"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :goto_13
    if-eqz v8, :cond_14

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v3, v8}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetTaskRootPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V

    :cond_14
    invoke-static {v0, v5, v15, v8}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getEffectivePackageName(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    long-to-int v8, v11

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v3, v8, v9}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v5, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v5, v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetInstanceId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;I)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_14

    :catch_3
    const-string v3, "UsageEvent instance ID API error"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    goto :goto_15

    :catch_4
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Fail to get uid for package %s of user %d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :goto_15
    const-wide/16 v3, 0x1

    if-eqz v2, :cond_15

    add-long/2addr v6, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_16
    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-wide/from16 v8, v23

    move-object/from16 v13, v25

    goto/16 :goto_c

    :cond_16
    move-object/from16 v21, v3

    goto/16 :goto_b

    :cond_17
    move-object/from16 v21, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Read %d relevant events (%d total) from UsageStatsManager"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v28 .. v29}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "execute loadCurrentAppUsageList size=%d in %d/ms"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    :goto_17
    return-object v3

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;Ljava/util/Map;B)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryUsageSlotList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryUsageSlotList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "DataProcessManager"

    const-string v0, "batteryUsageSlotList is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryUsageSlotLoaded:Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToGenerateFinalDataAndApplyCallback()V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "DataProcessManager"

    const-string v0, "batteryEventList is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mtryToProcessAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_7
    :goto_4
    const-string p1, "DataProcessManager"

    const-string v0, "databaseAppUsageList is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mtryToProcessAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToGenerateFinalDataAndApplyCallback()V

    return-void

    :pswitch_5
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_b
    :goto_7
    const-string p1, "DataProcessManager"

    const-string v0, "currentAppUsageList is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$mtryToProcessAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
