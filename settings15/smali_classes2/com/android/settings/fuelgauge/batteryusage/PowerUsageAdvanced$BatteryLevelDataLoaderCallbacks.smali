.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks$1;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;Landroid/content/Context;)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 11

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBatteryLevelDataUpdate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v1, 0x709

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iput p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    iput-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iput-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->CENTER_OF_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v5, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;)V

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget-object v1, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v5, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-boolean v10, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mIsStartTimestamp:Z

    iput-boolean v10, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mIsStartTimestamp:Z

    iget-object v8, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mFistTimestamp:J

    iget-object v8, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v9, v8}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_3
    :goto_1
    move-object v8, v0

    :goto_2
    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v8, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v9, v8}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_5
    :goto_3
    move-object v8, v0

    :goto_4
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mLatestTimestamp:J

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mResumeTimestamp:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Battery chart shows in %d millis"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdvancedBatteryUsage"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
