.class final synthetic Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string/jumbo v5, "startDragImmediately-k-4lQ0M(J)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/compose/animation/scene/SwipeToSceneNode;

    const-string/jumbo v4, "startDragImmediately"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;

    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object p1, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Lcom/android/compose/animation/scene/SwipeToSceneNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    iget-object v3, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object v3, v3, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v4, v3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v4}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/compose/animation/scene/SwipeToSceneNode;->shouldEnableSwipes(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/foundation/gestures/Orientation;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    iget-object v0, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v0, v0, Lcom/android/compose/animation/scene/DragControllerImpl;->swipeTransition:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v3, v0, Lcom/android/compose/animation/scene/SwipeTransition;->isFinishing:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->computeSwipes-_UaWb3I(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/ui/geometry/Offset;I)Lcom/android/compose/animation/scene/Swipes;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/compose/animation/scene/Swipes;->computeSwipesResults(Lcom/android/compose/animation/scene/Scene;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/UserActionResult;

    iget-object v3, v3, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v3, p1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isTransitioningBetween(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v3, p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isTransitioningBetween(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
