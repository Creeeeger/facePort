.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field public final mActivity:Lcom/android/settings/SettingsActivity;

.field public mBatteryChartViewGroup:Landroid/view/View;

.field mChartSummaryTextView:Landroid/widget/TextView;

.field mDailyChartIndex:I

.field final mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

.field mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field mDailyHighlightSlotIndex:I

.field public mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

.field public final mHandler:Landroid/os/Handler;

.field public final mHourlyChartFadeInAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

.field public final mHourlyChartFadeOutAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

.field mHourlyChartIndex:I

.field final mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

.field mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field mHourlyHighlightSlotIndex:I

.field public mHourlyViewModels:Ljava/util/List;

.field public mIs24HourFormat:Z

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

.field mPrefContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyHighlightSlotIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getAppBatteryUsageData(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getLastFullChargeTime(Landroid/content/Context;)J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getHistoryMapSinceLatestRecordBeforeQueryTimestamp(Landroid/content/Context;Ljava/util/Calendar;JJ)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getBatterySinceLastFullChargeUsageData() size=%d time=%d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryChartPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "DataProcessor"

    const-string v1, "getBatteryLevelData() returns null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p0, v0

    goto :goto_4

    :cond_2
    invoke-static {v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCurrentBatteryHistoryMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v6, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestSystemAppsPackageNames:Ljava/util/Set;

    if-eqz v2, :cond_6

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryUtil;->getSystemPackageNames(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryDiffDataMap(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryUsageMap(Landroid/content/Context;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Ljava/util/Map;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_8

    :cond_7
    :goto_5
    move-object p0, v0

    goto :goto_6

    :cond_8
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    :goto_6
    if-nez p0, :cond_a

    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v2

    if-nez v2, :cond_b

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_c
    return-object v0
.end method

.method public static getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0
.end method


# virtual methods
.method public final animateBatteryHourlyChartView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    return-void
.end method

.method public final getAccessibilityAnnounceMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const v1, 0x7f140625

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f140624

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getBatteryLevelPercentageInfo()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f140638

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryLevelPercentageInfo()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getSlotBatteryLevelText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getSlotBatteryLevelText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "battery_chart"

    return-object p0
.end method

.method public final getSlotInformation(Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v3, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v0, v3, :cond_3

    return-object v1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getContentDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v1, v3, :cond_5

    return-object v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getContentDescription(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_7

    return-object p1

    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f14062a

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "daily_chart_index"

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const-string v0, "hourly_chart_index"

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onCreate() dailyIndex=%d hourlyIndex=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x758

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "daily_chart_index"

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "hourly_chart_index"

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onSaveInstanceState() dailyIndex=%d hourlyIndex=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshUi()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    iput v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iput v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    iput v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    :goto_1
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v4, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    iput v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    :cond_7
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    iput v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyHighlightSlotIndex:I

    goto :goto_2

    :cond_8
    const/4 v1, -0x2

    :goto_2
    iput v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    :goto_3
    return-void

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01af

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eq v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    const p2, 0x7f0a02fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    :cond_4
    return-void
.end method
