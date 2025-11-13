.class final synthetic Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onDragStarted-MjzGXtM(Landroidx/compose/ui/geometry/Offset;FI)Lcom/android/compose/animation/scene/DragController;"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-class v3, Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    const-string v4, "onDragStarted"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-virtual {p2}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object p2, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p2, p2, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    iget-object p3, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    invoke-virtual {p3, p2}, Lcom/android/compose/animation/scene/Swipes;->updateSwipesResults(Lcom/android/compose/animation/scene/Scene;)V

    iget-object p1, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    new-instance p2, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v3, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v10, p1, Lcom/android/compose/animation/scene/SwipeTransition;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v11, p1, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    iget-object v4, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v5, p1, Lcom/android/compose/animation/scene/SwipeTransition;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p1, Lcom/android/compose/animation/scene/SwipeTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    iget-object v7, p1, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    iget-object v8, p1, Lcom/android/compose/animation/scene/SwipeTransition;->_toScene:Lcom/android/compose/animation/scene/Scene;

    iget-object v9, p1, Lcom/android/compose/animation/scene/SwipeTransition;->userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScope;

    move-object v2, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/compose/animation/scene/SwipeTransition;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionDistanceScope;Landroidx/compose/foundation/gestures/Orientation;Z)V

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v0

    iget-object v2, p2, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    iget-object v0, p2, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    iget-object p1, p2, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {p3, p1}, Lcom/android/compose/animation/scene/Swipes;->updateSwipesResults(Lcom/android/compose/animation/scene/Scene;)V

    new-instance p1, Lcom/android/compose/animation/scene/DragControllerImpl;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/compose/animation/scene/DragControllerImpl;-><init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SwipeTransition;)V

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    iget-object p3, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p3, p2, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    iput-object p2, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iput-object p1, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onDragStarted(overSlop=0f) requires an active dragController, but was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v7, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v0, v7, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p3}, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->computeSwipes-_UaWb3I(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/ui/geometry/Offset;I)Lcom/android/compose/animation/scene/Swipes;

    move-result-object p1

    invoke-virtual {p1, v4, p2, v1}, Lcom/android/compose/animation/scene/Swipes;->findUserActionResult(Lcom/android/compose/animation/scene/Scene;FZ)Lcom/android/compose/animation/scene/UserActionResult;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object p1, Lcom/android/compose/animation/scene/NoOpDragController;->INSTANCE:Lcom/android/compose/animation/scene/NoOpDragController;

    goto :goto_1

    :cond_3
    iget-object v2, v7, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v3, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move-object v6, p1

    invoke-static/range {v2 .. v8}, Lcom/android/compose/animation/scene/DraggableHandlerKt;->access$SwipeTransition(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionResult;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeTransition;

    move-result-object p2

    new-instance p3, Lcom/android/compose/animation/scene/DragControllerImpl;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/compose/animation/scene/DragControllerImpl;-><init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SwipeTransition;)V

    invoke-virtual {p3}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    iget-object p1, p3, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p1, p2, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    iput-object p2, p3, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iput-object p3, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

    move-object p1, p3

    :goto_1
    return-object p1
.end method
