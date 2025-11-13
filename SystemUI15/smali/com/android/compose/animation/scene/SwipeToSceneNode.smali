.class public final Lcom/android/compose/animation/scene/SwipeToSceneNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field public _draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

.field public final delegate:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/SwipeDetector;)V
    .locals 7

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    new-instance v6, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    new-instance v2, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$1;

    invoke-direct {v2, p0}, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$2;

    invoke-direct {v3, p0}, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$2;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$3;

    invoke-direct {v4, p1}, Lcom/android/compose/animation/scene/SwipeToSceneNode$delegate$3;-><init>(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/android/compose/animation/scene/SwipeDetector;)V

    invoke-virtual {p0, v6}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v6, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->delegate:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->_draggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    return-void
.end method

.method public static shouldEnableSwipes(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/foundation/gestures/Orientation;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/compose/animation/scene/Scene;->_userActions$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/UserAction;

    instance-of v2, v0, Lcom/android/compose/animation/scene/Swipe;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/compose/animation/scene/Swipe;

    iget-object v0, v0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeDirection;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final onCancelPointerInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->delegate:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->onCancelPointerInput()V

    return-void
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeToSceneNode;->delegate:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method
