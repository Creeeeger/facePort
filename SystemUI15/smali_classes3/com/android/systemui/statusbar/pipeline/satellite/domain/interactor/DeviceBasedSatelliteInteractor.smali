.class public final Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allConnectionsOos:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final areAllConnectionsOutOfService:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isOpportunisticSatelliteIconEnabled:Z

.field public final isSatelliteAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSatelliteProvisioned:Lkotlinx/coroutines/flow/StateFlow;

.field public final isWifiActive:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$map$1;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/LogBuffer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->isOpportunisticSatelliteIconEnabled()Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->isOpportunisticSatelliteIconEnabled:Z

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->oemEnabledSatelliteFlag()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->isSatelliteAllowedForCurrentLocation()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    goto :goto_0

    :cond_0
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object p5, v0

    :goto_0
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, p4, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->isSatelliteAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->oemEnabledSatelliteFlag()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->getConnectionState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    goto :goto_1

    :cond_1
    sget-object p5, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Off:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v2, p5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object p5, v2

    :goto_1
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Off:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    invoke-static {p5, p4, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->connectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->oemEnabledSatelliteFlag()Z

    move-result p5

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->getSignalStrength()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v4, p5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object p5, v4

    :goto_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5, p4, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->signalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;->isSatelliteProvisioned()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->isSatelliteProvisioned:Lkotlinx/coroutines/flow/StateFlow;

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    iget-object p1, p3, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$map$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->isWifiActive:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$map$1;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    iget-object p1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->icons:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p5, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$aggregateOver$1;

    invoke-direct {p5, p1}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$aggregateOver$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$aggregateOver$2;

    const/4 v2, 0x0

    invoke-direct {p1, v2, p3}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$special$$inlined$aggregateOver$2;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V

    invoke-static {p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->oemEnabledSatelliteFlag()Z

    move-result p5

    if-eqz p5, :cond_3

    new-instance p5, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;

    invoke-direct {p5, p0, v2}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isDeviceInEmergencyCallsOnlyMode:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$5;

    invoke-direct {v2, p1, p2, p5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    goto :goto_3

    :cond_3
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :goto_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {v2, p4, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->areAllConnectionsOutOfService:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
