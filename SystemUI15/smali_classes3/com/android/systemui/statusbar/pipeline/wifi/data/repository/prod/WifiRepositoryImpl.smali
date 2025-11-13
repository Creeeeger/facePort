.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final ACTIVITY_DEFAULT:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Companion;

.field public static final WIFI_NETWORK_DEFAULT:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;


# instance fields
.field public final TAG$1:Ljava/lang/String;

.field public final _wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wifiReceivedInetCondition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final hideDuringMobileSwitching:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final inputLogger:Lcom/android/systemui/log/LogBuffer;

.field public final isInstantTetherEnabled:Z

.field public final isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final receivedInetCondition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final secondaryNetworks:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiConnectivityTestReported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiConnectivityTestReportedChanged:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiManager:Landroid/net/wifi/WifiManager;

.field public final wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public wifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final wifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

.field public final wifiPickerTrackerInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiScanResults:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Companion;

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->WIFI_NETWORK_DEFAULT:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;-><init>(ZZ)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->ACTIVITY_DEFAULT:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;Landroid/net/wifi/WifiManager;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->inputLogger:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "WifiRepo"

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->TAG$1:Ljava/lang/String;

    new-instance v6, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v6, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v7, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$lifecycle$1$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$lifecycle$1$1;-><init>(Landroidx/lifecycle/LifecycleRegistry;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/flags/Flags;->INSTANT_TETHER:Lcom/android/systemui/flags/ReleasedFlag;

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v6, v3}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isInstantTetherEnabled:Z

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$WifiPickerTrackerInfo;

    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v10, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->WIFI_NETWORK_DEFAULT:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    invoke-direct {v6, v8, v9, v10, v7}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$WifiPickerTrackerInfo;-><init>(IZLcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;Ljava/util/List;)V

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiPickerTrackerInfo$1$1;

    const/4 v11, 0x0

    invoke-direct {v6, v0, v1, v3, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiPickerTrackerInfo$1$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lcom/android/systemui/flags/FeatureFlags;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v1

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1, v2, v12, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    const-string v13, ""

    const-string v14, "isEnabled"

    invoke-static {v3, v4, v13, v14, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v2, v12, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3, v4, v13, v10}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3, v2, v12, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$3;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    const-string/jumbo v10, "secondaryNetworks"

    invoke-static {v3, v4, v13, v10, v7}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3, v2, v12, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->secondaryNetworks:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$4;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const-string v3, "isDefault"

    invoke-static {v1, v4, v13, v3, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1, v2, v12, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result v1

    if-ne v1, v8, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->_wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->_wifiReceivedInetCondition:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v10, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1;

    invoke-direct {v14, v0, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    const/4 v14, 0x3

    invoke-static {v6, v14}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->ACTIVITY_DEFAULT:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    invoke-static {v10, v2, v15, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiScanResults$1;

    invoke-direct {v3, v0, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiScanResults$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3, v2, v12, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiScanResults:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.WIFI_ICON_HIDE_ACTION"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$hideDuringMobileSwitching$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$hideDuringMobileSwitching$1;

    const/16 v10, 0xe

    invoke-static {v5, v3, v11, v7, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v7, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$5;

    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$hideDuringMobileSwitching$3;

    invoke-direct {v3, v0, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$hideDuringMobileSwitching$3;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v12, v7, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v14}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiIconVisibility()I

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v12, v2, v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.WIFI_CONNECTIVITY_ACTION"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiConnectivityTestReportedChanged$1;

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiConnectivityTestReportedChanged$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;)V

    invoke-static {v5, v3, v11, v12, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiConnectivityTestReportedChanged$2;

    invoke-direct {v12, v0, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiConnectivityTestReportedChanged$2;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v15, v3, v12}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v14}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result v12

    if-ne v12, v8, :cond_2

    move v12, v8

    goto :goto_2

    :cond_2
    move v12, v9

    :goto_2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v15, v2, v3, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    filled-new-array {v3, v1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const-string/jumbo v3, "testReported"

    invoke-static {v1, v4, v13, v3, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v6, v14}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result v4

    if-ne v4, v8, :cond_3

    goto :goto_3

    :cond_3
    move v8, v9

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$receivedInetCondition$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$receivedInetCondition$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;)V

    invoke-static {v5, v1, v11, v3, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$receivedInetCondition$2;

    invoke-direct {v3, v0, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$receivedInetCondition$2;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v4, v1, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v14}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v2, v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->receivedInetCondition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getHideDuringMobileSwitching()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getReceivedInetCondition()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->receivedInetCondition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getSecondaryNetworks()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->secondaryNetworks:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWifiConnectivityTestReported()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWifiScanResults()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiScanResults:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final toWifiNetworkModel(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/wifitrackerlib/MergedCarrierEntry;

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/wifitrackerlib/MergedCarrierEntry;

    iget v2, v1, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    if-ne v2, v4, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Invalid;

    const-string v1, "Wifi network was carrier merged but had invalid sub ID"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Invalid;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    iget v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result v0

    add-int/2addr v0, v3

    iget v1, v1, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    invoke-direct {v2, v4, v1, v5, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;-><init>(IIII)V

    move-object v0, v2

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v2

    if-eq v2, v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v2

    if-ltz v2, :cond_12

    const/4 v4, 0x5

    if-ge v2, v4, :cond_12

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->isInstantTetherEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    instance-of v0, v1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    move-object v5, v1

    check-cast v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    monitor-enter v5

    :try_start_0
    iget-object v6, v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v5

    move v6, v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getDeviceType()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_8

    if-eq v6, v3, :cond_7

    const/4 v0, 0x2

    if-eq v6, v0, :cond_6

    const/4 v0, 0x3

    if-eq v6, v0, :cond_5

    const/4 v0, 0x4

    if-eq v6, v0, :cond_4

    if-eq v6, v4, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->INVALID:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->AUTO:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->WATCH:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->LAPTOP:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->TABLET:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->PHONE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    :goto_1
    move-object v10, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->NONE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    goto :goto_1

    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v5

    invoke-virtual {v1, v6, v5}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    move-result v5

    goto :goto_3

    :cond_a
    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v5, v5, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    :goto_3
    if-eqz v5, :cond_b

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->SIXGE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    :goto_4
    move-object v14, v1

    goto :goto_8

    :cond_b
    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v6, 0x6

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v5

    if-ne v5, v6, :cond_c

    :goto_5
    move v5, v3

    goto :goto_6

    :cond_c
    move v5, v2

    goto :goto_6

    :cond_d
    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget v5, v5, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v5, v6, :cond_c

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_e

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->SIXG:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    goto :goto_4

    :cond_e
    iget-object v5, v1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v1

    if-ne v1, v4, :cond_f

    goto :goto_7

    :cond_f
    move v3, v2

    goto :goto_7

    :cond_10
    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v1, v4, :cond_f

    :goto_7
    if-eqz v3, :cond_11

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->FIVEG:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    goto :goto_4

    :cond_11
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->NONE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    goto :goto_4

    :goto_8
    const/16 v16, 0x200

    const/16 v17, 0x0

    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;-><init>(IZILjava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;ZZLjava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    :goto_9
    return-object v0
.end method
