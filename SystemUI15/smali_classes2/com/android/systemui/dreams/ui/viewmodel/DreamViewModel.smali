.class public final Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;
.super Lcom/android/systemui/util/kotlin/FlowDumperImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final dreamAlpha:Lkotlinx/coroutines/flow/Flow;

.field public final dreamOverlayAlpha:Lkotlinx/coroutines/flow/Flow;

.field public final dreamOverlayTranslationX:Lkotlinx/coroutines/flow/Flow;

.field public final dreamOverlayTranslationY:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final toLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

.field public final transitionEnded:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p9, v0, v1, v0}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p5, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->toLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    iput-object p6, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p7, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p6, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;->dreamOverlayTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p7, p3, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->dreamOverlayTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    filled-new-array {p6, p7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p6

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p6

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamOverlayTranslationX:Lkotlinx/coroutines/flow/Flow;

    const p6, 0x7f070388

    invoke-virtual {p1, p6}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance p6, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p6, v0, p0}, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;)V

    invoke-static {p1, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamOverlayTranslationY:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p1, p5, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->dreamOverlayAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object p5, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;->dreamAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    filled-new-array {p1, p5}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    const-string p6, "dreamAlpha"

    invoke-virtual {p0, p5, p6}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamAlpha:Lkotlinx/coroutines/flow/Flow;

    iget-object p4, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;->dreamOverlayAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object p3, p3, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->dreamOverlayAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    filled-new-array {p1, p4, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamOverlayAlpha:Lkotlinx/coroutines/flow/Flow;

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object p3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {p1, p3, v0, v1}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->transitionEnded:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;

    return-void
.end method


# virtual methods
.method public final startTransitionFromDream()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast v0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->toLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->fromDreamingTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->startToLockscreenTransition()V

    :goto_0
    return-void
.end method
