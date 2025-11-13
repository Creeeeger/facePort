.class public final Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticationDuration:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final context:Landroid/content/Context;

.field public final isAvailable:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$2;

.field public final isProlongedTouchRequiredForAuthentication:Lkotlinx/coroutines/flow/Flow;

.field public final isSettingEnabled:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final logger:Lcom/android/systemui/log/SideFpsLogger;

.field public final sensorLocation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final sensorLocationForCurrentDisplay:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Landroid/view/WindowManager;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Ljava/util/Optional;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/log/SideFpsLogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/log/SideFpsLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->context:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->logger:Lcom/android/systemui/log/SideFpsLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p8, 0x7f05003a

    invoke-virtual {p1, p8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    check-cast p4, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object p8, p4, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->displayChanges:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    check-cast p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object v0, p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorLocations:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;

    sget-object v1, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocationForCurrentDisplay$2;->INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocationForCurrentDisplay$2;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p8, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p8, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$1;

    invoke-direct {p8, v2, p0}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, p8}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p8, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$2;

    iget-object p2, p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p8, p2}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p2, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$authenticationDuration$1;->INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$authenticationDuration$1;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInStateWhere$$inlined$map$1;

    iget-object p7, p7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v1, p7, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInStateWhere$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p7, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$3;

    invoke-direct {p7, p2, p0}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;)V

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$4;

    invoke-direct {p2, p7}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p7, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$authenticationDuration$4;

    const/4 v1, 0x0

    invoke-direct {p7, p0, v1}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$authenticationDuration$4;-><init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, p2, p7}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    check-cast p6, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object p2, p6, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p6, v1, p5}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/util/Optional;)V

    invoke-static {p2, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$isSettingEnabled$2;

    invoke-direct {p5, p0, v1}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$isSettingEnabled$2;-><init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p6, p2, p5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$isProlongedTouchRequiredForAuthentication$1;

    invoke-direct {p1, v1}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$isProlongedTouchRequiredForAuthentication$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p2, p8, p6, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->isProlongedTouchRequiredForAuthentication:Lkotlinx/coroutines/flow/Flow;

    sget-object p1, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$2;->INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$2;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p4, p4, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p2, p4, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/view/WindowManager;)V

    sget-object p2, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;->INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;

    sget-object p3, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultKeySelector:Lkotlin/jvm/functions/Function1;

    const/4 p4, 0x2

    invoke-static {p4, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/DistinctFlowImpl;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;

    invoke-direct {p2, p0, v1}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;-><init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->sensorLocation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    return-void
.end method
