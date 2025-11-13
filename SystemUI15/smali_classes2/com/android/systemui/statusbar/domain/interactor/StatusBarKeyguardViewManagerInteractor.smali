.class public final Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keyguardViewOcclusionState:Lkotlinx/coroutines/flow/DistinctFlowImpl;

.field public final occlusionStateFromFinishedStep:Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$special$$inlined$map$2;

.field public final occlusionStateFromStartedStep:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    iget-object p3, p3, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$occlusionStateFromStartedStep$2;->INSTANCE:Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$occlusionStateFromStartedStep$2;

    invoke-static {p0, p3, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$special$$inlined$map$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p0, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->isShowWhenLockedActivityOnTop:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor$special$$inlined$map$1;

    sget-object p3, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$occlusionStateFromFinishedStep$2;->INSTANCE:Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$occlusionStateFromFinishedStep$2;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;

    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {p0, p2}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$keyguardViewOcclusionState$1;->INSTANCE:Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$keyguardViewOcclusionState$1;

    sget-object p2, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultAreEquivalent:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object p0, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->isAnimatingSurface:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p1, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$keyguardViewVisibility$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor$keyguardViewVisibility$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p4, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->lockscreenVisibility:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p2, p3, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
