.class public final Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;


# instance fields
.field public final activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final demoImpl:Lcom/android/systemui/statusbar/pipeline/satellite/data/demo/DemoDeviceBasedSatelliteRepository;

.field public final demoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSatelliteAllowedForCurrentLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSatelliteProvisioned:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final realImpl:Lcom/android/systemui/statusbar/pipeline/satellite/data/RealDeviceBasedSatelliteRepository;

.field public final signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/RealDeviceBasedSatelliteRepository;Lcom/android/systemui/statusbar/pipeline/satellite/data/demo/DemoDeviceBasedSatelliteRepository;Lcom/android/systemui/demomode/DemoModeController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->realImpl:Lcom/android/systemui/statusbar/pipeline/satellite/data/RealDeviceBasedSatelliteRepository;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->demoImpl:Lcom/android/systemui/statusbar/pipeline/satellite/data/demo/DemoDeviceBasedSatelliteRepository;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$isDemoMode$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$isDemoMode$1;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p4, v3, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$activeRepo$1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$activeRepo$1;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$1;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;

    iget-object v4, p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->isSatelliteProvisioned:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, p4, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->isSatelliteProvisioned:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$2;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, p4, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$3;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, p4, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$4;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->isSatelliteAllowedForCurrentLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p4, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->isSatelliteAllowedForCurrentLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static synthetic getActiveRepo$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getConnectionState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isOpportunisticSatelliteIconEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->isOpportunisticSatelliteIconEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSatelliteAllowedForCurrentLocation()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->isSatelliteAllowedForCurrentLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isSatelliteProvisioned()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepositorySwitcher;->isSatelliteProvisioned:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method
