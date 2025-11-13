.class public Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field mBatteryLevelData:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;",
            ">;"
        }
    .end annotation
.end field

.field final mBatteryLevelDataLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

.field public final mBatteryObserver:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

.field mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

.field mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

.field public mBatteryUsageMap:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Landroid/os/Handler;

.field mHighlightEventWrapper:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

.field public mIsChartDataLoaded:Z

.field public mResumeTimestamp:J

.field mScreenOnTimeController:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;


# direct methods
.method public static -$$Nest$monBatteryDiffDataMapUpdate(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Ljava/util/Map;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-static {v0, p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryUsageMap(Landroid/content/Context;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBatteryDiffDataMapUpdate: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvancedBatteryUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    const/4 v0, -0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-wide v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v3, v5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    long-to-int p1, v6

    const/16 v6, 0x718

    invoke-virtual {v1, v5, v6, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x719

    long-to-int v3, v3

    invoke-virtual {p1, v1, v5, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    if-nez p1, :cond_6

    move-object p1, v2

    goto :goto_4

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    :goto_4
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_7
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    :cond_a
    :goto_5
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;-><init>()V

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelDataLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    return-void
.end method

.method public static getAnomalyEvent(Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEventList;Ljava/util/function/Predicate;)Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEventList;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEventList;->getPowerAnomalyEventsCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEventList;->getPowerAnomalyEventsList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "filterAnomalyEvent = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "AdvancedBatteryUsage"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mScreenOnTimeController:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mScreenOnTimeController:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz v1, :cond_0

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    return-object v0
.end method

.method public findRelatedBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getHighlightSlotPair(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    :cond_0
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getAnomalyEntryKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getHighlightSlotPair(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Landroid/util/Pair;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getAnomalyEntryKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedBatteryUsage"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x33

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170111

    return p0
.end method

.method public final isAppsAnomalyEventFocused()Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyHighlightSlotIndex:I

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "battery_chart"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz v0, :cond_0

    iput-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    :cond_0
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onDisplayAnomalyEventUpdated(Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->setOnAnomalyConfirmListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->setOnAnomalyRejectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyRejectListener;)V

    if-nez p1, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;)V

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->findRelatedBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mRelatedBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->handleBatteryTipsCardUpdated(Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;Z)V

    const/4 p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz v1, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;)V

    :cond_5
    :goto_2
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    iget-object v2, p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    if-nez v2, :cond_6

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getHighlightSlotPair(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    :cond_6
    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getHighlightSlotPair(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Landroid/util/Pair;

    move-result-object p1

    if-eqz v1, :cond_7

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->setOnAnomalyConfirmListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;)V

    :cond_7
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyHighlightSlotIndex:I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mResumeTimestamp:J

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onSelectedSlotDataUpdated()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mScreenOnTimeController:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iget v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation(Z)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mScreenOnTimeController:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    if-eqz v5, :cond_1

    iget-wide v1, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->handleScreenOnTimeUpdated(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->isAppsAnomalyEventFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->acceptTipsCard()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageBreakdownController:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v8, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->isAppsAnomalyEventFocused()Z

    move-result v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->handleBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Optional;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mResumeTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Battery usage list shows in %d millis"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdvancedBatteryUsage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method

.method public final refreshUi(I)V
    .locals 0

    return-void
.end method

.method public final restartBatteryStatsLoader(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelData:Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryUsageMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHighlightEventWrapper:Ljava/util/Optional;

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryLevelDataLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryLevelDataLoaderCallbacks;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    :cond_0
    return-void
.end method
