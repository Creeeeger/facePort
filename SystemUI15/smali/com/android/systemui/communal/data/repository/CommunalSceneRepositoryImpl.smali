.class public final Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;


# instance fields
.field public final _transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final currentScene:Lkotlinx/coroutines/flow/StateFlow;

.field public final defaultTransitionState:Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

.field public final sceneDataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

.field public final transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/shared/model/SceneDataSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->sceneDataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p3}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->getCurrentScene()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    sget-object p3, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Default:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {p1, p3}, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->defaultTransitionState:Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    const/4 p3, 0x0

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->_transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {v1, p3, p0}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    invoke-static {p3, p2, v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl$changeScene$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl$changeScene$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
