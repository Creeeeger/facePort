.class public final Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/shared/model/SceneDataSource;


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    iput-object p2, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt;->observableTransitionState(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource$special$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    check-cast p1, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object p1

    invoke-static {v0, p2, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    check-cast v0, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    iget-object p0, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, p1, p2}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animateToScene(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)Lcom/android/compose/animation/scene/OneOffTransition;

    return-void
.end method

.method public final getCurrentScene()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final snapToScene(Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;->state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    check-cast p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getCurrentTransitions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/compose/animation/scene/TransitionState$Idle;

    invoke-direct {v0, p1}, Lcom/android/compose/animation/scene/TransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
