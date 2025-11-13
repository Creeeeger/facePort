.class public final Lcom/android/compose/animation/scene/DragControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/DragController;


# instance fields
.field public final draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

.field public final layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field public swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

.field public final swipes:Lcom/android/compose/animation/scene/Swipes;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SwipeTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    iput-object p3, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p1, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple controllers with the same SwipeTransition"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final onStop$animateTo(Lcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/DragControllerImpl;FLcom/android/compose/animation/scene/Scene;F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object v1, v0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v1, v1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v2, p3, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v0, v0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v1, v0, v2}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->onChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/SceneKey;)V

    :cond_0
    iget-object p1, p1, Lcom/android/compose/animation/scene/DragControllerImpl;->draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object p1, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p3, p3, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/compose/animation/scene/SwipeTransition;->animateOffset(Lkotlinx/coroutines/CoroutineScope;FFLcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    return-void
.end method


# virtual methods
.method public final isDrivingTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onDrag(F)V
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    cmpg-float v2, p1, v0

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v3, v2, Lcom/android/compose/animation/scene/SwipeTransition;->isFinishing:Z

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v2, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    iget-object v2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v3, v2, Lcom/android/compose/animation/scene/SwipeTransition;->_toScene:Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/SwipeTransition;->distance()F

    move-result v4

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    iget-object v7, v2, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    if-eqz v5, :cond_7

    cmpg-float v0, v4, v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v4, v2

    cmpg-float v5, v0, v4

    const/4 v8, 0x0

    if-gtz v5, :cond_4

    iget-object v5, v6, Lcom/android/compose/animation/scene/Swipes;->upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_3
    move-object v5, v8

    :goto_0
    iget-object v9, v3, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, v6, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    if-eqz v0, :cond_5

    iget-object v8, v0, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :cond_5
    iget-object v0, v3, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, v9, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v2, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v3, v3, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v3

    invoke-virtual {v6, v9, v3, v1}, Lcom/android/compose/animation/scene/Swipes;->findUserActionResult(Lcom/android/compose/animation/scene/Scene;FZ)Lcom/android/compose/animation/scene/UserActionResult;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-virtual {p0, p1, v2}, Lcom/android/compose/animation/scene/DragControllerImpl;->onStop(FZ)V

    return-void

    :cond_8
    if-nez v1, :cond_9

    iget-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v1, v10, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    iget-object v1, v10, Lcom/android/compose/animation/scene/UserActionResult;->transitionKey:Lcom/android/compose/animation/scene/TransitionKey;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object v8, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v11, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    iget-object v12, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v13, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static/range {v7 .. v13}, Lcom/android/compose/animation/scene/DraggableHandlerKt;->access$SwipeTransition(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionResult;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeTransition;

    move-result-object p1

    iget-object v1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v1, v1, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p1, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v0, p1, v2}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    :goto_4
    iput-object p1, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    :cond_b
    :goto_5
    return-void
.end method

.method public final onStop(FZ)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v1, v0, Lcom/android/compose/animation/scene/SwipeTransition;->isFinishing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v3, v0, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object v11, v0, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    iget-object v4, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    const/4 v12, 0x0

    if-eqz p2, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p2

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->distance()F

    move-result v3

    cmpg-float v5, v3, v12

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v6

    iget-object v7, v0, Lcom/android/compose/animation/scene/SwipeTransition;->_toScene:Lcom/android/compose/animation/scene/Scene;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    iget-object v8, v4, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v8, v8, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    const/16 v9, 0x7d

    int-to-float v9, v9

    sget-object v10, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v8, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    iget-object v4, v4, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v4, v4, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    const/16 v9, 0x38

    int-to-float v9, v9

    invoke-interface {v4, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    if-gez v5, :cond_4

    cmpl-float v9, p2, v12

    if-gtz v9, :cond_8

    cmpl-float v9, p1, v8

    if-ltz v9, :cond_2

    goto :goto_1

    :cond_2
    neg-float v8, v8

    cmpg-float v8, p1, v8

    if-lez v8, :cond_7

    neg-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    if-eqz v6, :cond_7

    :cond_3
    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v4, p2

    if-gez p2, :cond_8

    goto :goto_0

    :cond_4
    cmpg-float v9, p2, v12

    if-ltz v9, :cond_8

    neg-float v9, v8

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float v8, p1, v8

    if-gez v8, :cond_7

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v4, p2

    if-gez p2, :cond_8

    :cond_7
    :goto_0
    move p2, v3

    goto :goto_2

    :cond_8
    :goto_1
    move-object v7, v11

    move p2, v12

    :goto_2
    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v7, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v2, v4}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->canChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    move p2, v1

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    xor-int/2addr p2, v1

    if-eqz p2, :cond_b

    move v12, v3

    :goto_4
    move p2, v12

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "distance is equal to 0.0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    invoke-static {v0, p0, p1, v7, p2}, Lcom/android/compose/animation/scene/DragControllerImpl;->onStop$animateTo(Lcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/DragControllerImpl;FLcom/android/compose/animation/scene/Scene;F)V

    goto :goto_9

    :cond_d
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p2

    cmpg-float p2, p2, v12

    if-nez p2, :cond_12

    cmpl-float p2, p1, v12

    iget-object v3, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    if-lez p2, :cond_e

    iget-object p2, v3, Lcom/android/compose/animation/scene/Swipes;->upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;

    :goto_6
    move-object v7, p2

    goto :goto_7

    :cond_e
    cmpg-float p2, p1, v12

    if-gez p2, :cond_f

    iget-object p2, v3, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    goto :goto_6

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    goto :goto_6

    :goto_7
    if-nez v7, :cond_10

    iget-object p0, v11, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object p1, v0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p1, v0, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    return-void

    :cond_10
    iget-object v5, v4, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v8, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipes:Lcom/android/compose/animation/scene/Swipes;

    iget-object v9, v4, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v10, v4, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move-object v4, p2

    move-object v6, v11

    invoke-static/range {v4 .. v10}, Lcom/android/compose/animation/scene/DraggableHandlerKt;->access$SwipeTransition(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionResult;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeTransition;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v3

    iget-object v4, p2, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v2, p2, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    :goto_8
    iput-object p2, p0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-static {v0, p0, p1, v11, v12}, Lcom/android/compose/animation/scene/DragControllerImpl;->onStop$animateTo(Lcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/DragControllerImpl;FLcom/android/compose/animation/scene/Scene;F)V

    goto :goto_9

    :cond_12
    invoke-static {v0, p0, p1, v11, v12}, Lcom/android/compose/animation/scene/DragControllerImpl;->onStop$animateTo(Lcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/DragControllerImpl;FLcom/android/compose/animation/scene/Scene;F)V

    :cond_13
    :goto_9
    return-void
.end method
