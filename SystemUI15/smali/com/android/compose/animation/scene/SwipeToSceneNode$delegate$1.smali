.class final synthetic Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "enabled()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/android/compose/animation/scene/SwipeToSceneNode;

    const-string v4, "enabled"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object v0, v0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/DragControllerImpl;->isDrivingTransition()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    iget-object v0, v0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v2, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->delegate:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v0, p0}, Lcom/android/compose/animation/scene/SwipeToSceneNode;->shouldEnableSwipes(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/foundation/gestures/Orientation;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
