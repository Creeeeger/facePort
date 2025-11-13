.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isShowWhenLockedActivityOnTop:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$1;

.field public final occludingActivityWillDismissKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;

.field public final showWhenLockedActivityInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showWhenLockedActivityLaunchedFromPowerGesture:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object p2, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;->showWhenLockedActivityInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->showWhenLockedActivityInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$1;

    invoke-direct {p6, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->isShowWhenLockedActivityOnTop:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$1;

    iget-object p2, p3, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$showWhenLockedActivityLaunchedFromPowerGesture$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$showWhenLockedActivityLaunchedFromPowerGesture$2;

    iget-object p4, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2, p4, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$filter$1;

    invoke-direct {p2, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$3;

    invoke-direct {p4, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {p3, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->showWhenLockedActivityLaunchedFromPowerGesture:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p2, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->occludingActivityWillDismissKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
