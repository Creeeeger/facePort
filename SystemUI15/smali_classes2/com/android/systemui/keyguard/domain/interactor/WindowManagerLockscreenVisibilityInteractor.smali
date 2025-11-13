.class public final Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;


# instance fields
.field public final aodVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final defaultSurfaceBehindVisibility:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$1;

.field public final isDeviceEntered$delegate:Lkotlin/Lazy;

.field public final lockscreenVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final transitionSpecificSurfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final usingKeyguardGoingAwayAnimation:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromPrimaryBouncerTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/FromPrimaryBouncerTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$1;

    iget-object v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    sget-object v1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;

    invoke-direct {p8, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;)V

    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->defaultSurfaceBehindVisibility:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$1;

    new-instance p8, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {p8, v1, p4, p5, p6}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromPrimaryBouncerTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;)V

    iget-object p4, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    invoke-static {p4, p8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->transitionSpecificSurfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$isDeviceEntered$2;

    invoke-direct {p4, p9}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$isDeviceEntered$2;-><init>(Ldagger/Lazy;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->isDeviceEntered$delegate:Lkotlin/Lazy;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$isDeviceNotEntered$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$isDeviceNotEntered$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p4, v1, p0}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;)V

    iget-object p5, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransitionToAnyState:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p5, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p4, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object p5, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p4, p5}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    move-result-object p5

    sget-object p6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 p8, 0x1

    invoke-static {p4, v1, p6, p8}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object p4

    invoke-virtual {p2, p5, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->isAnimatingSurface:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p5, p7, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;

    iget-object p5, p5, Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;->isLaunchAnimationRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p6, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$usingKeyguardGoingAwayAnimation$2;

    invoke-direct {p6, v1}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$usingKeyguardGoingAwayAnimation$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, v0, p3, p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->usingKeyguardGoingAwayAnimation:Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p3, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;

    iget-object p4, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedStepWithPrecedingStep:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {p4, p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$2;

    invoke-direct {p3, p2, p9}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Ldagger/Lazy;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->lockscreenVisibility:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->biometricUnlockState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$aodVisibility$1;

    invoke-direct {p3, v1}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$aodVisibility$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p4, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAodAvailable:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p4, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->aodVisibility:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
