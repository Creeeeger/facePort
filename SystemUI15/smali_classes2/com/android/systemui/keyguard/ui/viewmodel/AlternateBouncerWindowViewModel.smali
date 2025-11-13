.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alternateBouncerWindowRequired:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final deviceSupportsAlternateBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isTransitioningToOrFromOrShowingAlternateBouncer:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->alternateBouncerSupported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel$special$$inlined$map$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel;->isTransitioningToOrFromOrShowingAlternateBouncer:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerWindowViewModel;->alternateBouncerWindowRequired:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
