.class public final Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final lastStartedTransitionHadShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;->lastStartedTransitionHadShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final transitionFlow(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$filteredFlowWhenShadeIsExpanded$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$filteredFlowWhenShadeIsExpanded$2;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;->lastStartedTransitionHadShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$filter$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$map$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$filteredFlowWhenShadeIsNotExpanded$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$filteredFlowWhenShadeIsNotExpanded$2;

    invoke-static {p2, p0, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$filter$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$map$2;

    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows$transitionFlow$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {p1, p0}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p0

    return-object p0
.end method
