.class public final Lcom/android/systemui/scene/data/repository/SceneContainerRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _isVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final config:Lcom/android/systemui/scene/shared/model/SceneContainerConfig;

.field public final currentScene:Lkotlinx/coroutines/flow/StateFlow;

.field public final dataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

.field public final defaultTransitionState:Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

.field public final isRemoteUserInteractionOngoing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/shared/model/SceneContainerConfig;Lcom/android/systemui/scene/shared/model/SceneDataSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->config:Lcom/android/systemui/scene/shared/model/SceneContainerConfig;

    iput-object p3, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->dataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p3}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->getCurrentScene()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->isRemoteUserInteractionOngoing:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p3, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object p2, p2, Lcom/android/systemui/scene/shared/model/SceneContainerConfig;->initialSceneKey:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {p3, p2}, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object p3, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->defaultTransitionState:Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/scene/data/repository/SceneContainerRepository$special$$inlined$flatMapLatest$1;

    invoke-direct {v1, p2, p0}, Lcom/android/systemui/scene/data/repository/SceneContainerRepository$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/scene/data/repository/SceneContainerRepository;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p2, p1, v0, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
