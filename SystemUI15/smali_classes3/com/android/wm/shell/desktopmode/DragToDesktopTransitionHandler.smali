.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final context:Landroid/content/Context;

.field public dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

.field public final launchHomeIntent:Landroid/content/Intent;

.field public onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

.field public final rectEvaluator:Landroid/animation/RectEvaluator;

.field public splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final taskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final transactionSupplier:Ljava/util/function/Supplier;

.field public transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

.field public final transitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$1;->INSTANCE:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->taskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transactionSupplier:Ljava/util/function/Supplier;

    new-instance p1, Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->rectEvaluator:Landroid/animation/RectEvaluator;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->launchHomeIntent:Landroid/content/Intent;

    return-void
.end method

.method public static restoreWindowOrder(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;)V
    .locals 4

    instance-of v0, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;->otherRootChanges:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dragged task should be non-null before cancelling"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Split root should be non-null before cancelling"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getHomeToken()Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Home task should be non-null before cancelling"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancelDragToDesktopTransition(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartAborted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setCancelState(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v3, v0, v2

    int-to-float p1, p1

    sub-float v5, p1, v4

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v8, 0x150

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v8, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;-><init>(FFFFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;-><init>(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected non-null task change"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-eq p1, v1, :cond_3

    sget-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne p1, v3, :cond_8

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {v1, v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->restoreWindowOrder(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishCb()Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object v7

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    invoke-direct {v5, v7}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    new-instance v0, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    float-to-int v8, v7

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v9, v5

    add-float/2addr v7, v6

    float-to-int v6, v7

    add-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v0, v8, v9, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requestSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected non-null taskInfo"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0x3f5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelTransitionToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    const-string v0, "Start transition expected to be waiting for merge but wasn\'t"

    if-eqz p4, :cond_11

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishCb()Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-result-object v7

    if-eqz v7, :cond_10

    if-eqz v3, :cond_d

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    move-object p2, p1

    check-cast p2, Lkotlin/collections/IndexingIterator;

    iget-object v0, p2, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/collections/IndexedValue;

    iget v0, p2, Lkotlin/collections/IndexedValue;->index:I

    iget-object p2, p2, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast p2, Landroid/window/TransitionInfo$Change;

    instance-of v1, v6, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move-object v3, v6

    check-cast v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    iget v3, v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    if-ne v1, v3, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v3

    if-ne v1, v3, :cond_6

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, p2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setDraggedTaskChange(Landroid/window/TransitionInfo$Change;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    neg-int v0, v0

    invoke-virtual {p3, v3, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p4, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected dragged leash to be non-null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object p4

    iget-object p4, p4, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v1

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object p4

    iget-object p4, p4, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget p4, p4, Landroid/graphics/PointF;->y:F

    float-to-int p4, p4

    add-int/2addr v0, v4

    add-int/2addr p2, p4

    invoke-direct {v3, v4, p4, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    if-eqz p2, :cond_a

    iget-object p2, p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p4, p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz p4, :cond_9

    invoke-virtual {p4, p3}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    iput-object v2, p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    :cond_a
    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    if-nez p2, :cond_b

    move-object p2, v2

    :cond_b
    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result p4

    invoke-virtual {p2, p4, p3, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->onAnimationStart(ILandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    invoke-interface {p5, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->rectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x150

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;

    move-object v0, p2

    move-object v3, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;-><init>(FLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;

    invoke-direct {p2, p0, v6, v7}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;-><init>(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected non-null change of dragged task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_e
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p5, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    invoke-interface {v7, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    :cond_f
    :goto_3
    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_4
    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DragToDesktop: onTransitionConsumed() start transition aborted"

    invoke-static {p2, p1, p3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setStartAborted()V

    :cond_1
    return-void
.end method

.method public final requestSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 5

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageOfTask(I)I

    move-result v0

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->prepareExitSplitScreen(IILandroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_3
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, v0, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p4, v0, v2}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected non-null transition state"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    const/16 v4, 0x3f2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_11

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionToken()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    new-instance v8, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;

    invoke-direct {v8}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    move-object v10, v9

    check-cast v10, Lkotlin/collections/IndexingIterator;

    iget-object v11, v10, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    iget v11, v10, Lkotlin/collections/IndexedValue;->index:I

    iget-object v10, v10, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v12

    if-eqz v12, :cond_1

    sub-int v11, v7, v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v1, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    move-object/from16 v12, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v12

    if-ne v12, v6, :cond_2

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setHomeToken(Landroid/window/WindowContainerToken;)V

    sub-int v11, v4, v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v1, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    invoke-static {v10, v12}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    instance-of v13, v2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    if-eqz v13, :cond_4

    move-object v13, v2

    check-cast v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    iput-object v10, v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v13

    sget-object v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne v13, v14, :cond_3

    sub-int v11, v3, v11

    goto :goto_2

    :cond_3
    move v11, v7

    :goto_2
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v1, v13, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_4
    instance-of v13, v2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    if-eqz v13, :cond_0

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    if-eqz v13, :cond_5

    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v14

    if-ne v13, v14, :cond_5

    invoke-virtual {v2, v10}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setDraggedTaskChange(Landroid/window/TransitionInfo$Change;)V

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v1, v13, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v1, v13, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_0

    :cond_5
    move-object v13, v2

    check-cast v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    iget-object v13, v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;->otherRootChanges:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    sub-int v11, v3, v11

    invoke-virtual {v1, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v1, v11, v14, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8, v10}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_7

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v13

    if-ne v11, v13, :cond_7

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v11

    sget-object v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-eq v11, v13, :cond_7

    invoke-virtual {v2, v10}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setDraggedTaskChange(Landroid/window/TransitionInfo$Change;)V

    :cond_7
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v13

    if-ne v11, v13, :cond_0

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v11

    sget-object v13, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne v11, v13, :cond_0

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    iget-object v14, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->taskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v14, v14, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceControl;

    invoke-virtual {v1, v13, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v1, v13, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v1, v13, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v10, p5

    invoke-virtual {v2, v10}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setStartTransitionFinishCb(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setStartTransitionFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_9

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->allowSurfaceChangesOnMove:Z

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne v1, v3, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v1

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {v2, v1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->restoreWindowOrder(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;)V

    iget-object v3, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v5, 0x3f5

    invoke-virtual {v3, v5, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setCancelTransitionToken(Landroid/os/IBinder;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-eq v1, v3, :cond_b

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v1

    sget-object v6, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-ne v1, v6, :cond_f

    :cond_b
    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v1

    if-ne v1, v3, :cond_c

    goto :goto_3

    :cond_c
    move v5, v4

    :goto_3
    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskChange()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->restoreWindowOrder(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_d
    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartTransitionFinishCb()Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_e
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requestSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    :cond_f
    :goto_4
    return v4

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected non-null task info."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return v5
.end method
