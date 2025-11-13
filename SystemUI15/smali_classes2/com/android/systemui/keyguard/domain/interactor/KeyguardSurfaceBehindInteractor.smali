.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isAnimatingSurface:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isNotificationLaunchAnimationRunningOnKeyguard:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepository;

.field public final viewParams:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepository;Landroid/content/Context;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepository;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepository;

    iget-object p6, p6, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;

    iget-object v0, p6, Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;->isLaunchAnimationRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p2, p5, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;-><init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p2, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    iget-object p4, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2, p4, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->viewParams:Lkotlinx/coroutines/flow/Flow;

    sget-object p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isNotificationLaunchAnimationRunningOnKeyguard$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isNotificationLaunchAnimationRunningOnKeyguard$2;

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p4, p6, Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;->isLaunchAnimationRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4, p3, p2}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isNotificationLaunchAnimationRunningOnKeyguard$4;

    invoke-direct {p2, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isNotificationLaunchAnimationRunningOnKeyguard$4;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p4, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepositoryImpl;->isAnimatingSurface:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isAnimatingSurface$1;

    invoke-direct {p2, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$isAnimatingSurface$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, p1, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->isAnimatingSurface:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
