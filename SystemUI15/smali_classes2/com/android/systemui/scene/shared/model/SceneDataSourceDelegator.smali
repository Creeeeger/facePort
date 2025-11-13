.class public final Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/shared/model/SceneDataSource;


# instance fields
.field public final currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final delegateMutable:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final noOpDelegate:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$NoOpSceneDataSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/shared/model/SceneContainerConfig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$NoOpSceneDataSource;

    iget-object p2, p2, Lcom/android/systemui/scene/shared/model/SceneContainerConfig;->initialSceneKey:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v0, p2}, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$NoOpSceneDataSource;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object v0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->noOpDelegate:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$NoOpSceneDataSource;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->delegateMutable:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$special$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->delegateMutable:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    return-void
.end method

.method public final getCurrentScene()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final setDelegate(Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->noOpDelegate:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator$NoOpSceneDataSource;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->delegateMutable:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final snapToScene(Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->delegateMutable:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p0, p1}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->snapToScene(Lcom/android/compose/animation/scene/SceneKey;)V

    return-void
.end method
