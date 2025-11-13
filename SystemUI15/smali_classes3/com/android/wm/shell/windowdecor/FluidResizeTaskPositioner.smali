.class public final Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
.implements Lcom/android/wm/shell/windowdecor/TaskDragResizer;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mCtrlType:I

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDragResizeEndTransition:Landroid/os/IBinder;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

.field public mHasDragResized:Z

.field public mIsResizingOrAnimatingResize:Z

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 7

    new-instance v5, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isResizing()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isResizingOrAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    return p0
.end method

.method public final onDragPositioningEnd(FF)Landroid/graphics/Rect;
    .locals 13

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->isResizing()Z

    move-result v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v5, v3}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {p1, p2, v5}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    iget v6, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v12, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    invoke-static/range {v6 .. v12}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_0
    invoke-virtual {v2, v1, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragResizeEndTransition:Landroid/os/IBinder;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    if-nez v0, :cond_2

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v5, v6, v7, p1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object p1, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v2, v1, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/PointF;->set(FF)V

    iput v3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onDragPositioningMove(FF)Landroid/graphics/Rect;
    .locals 10

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {p1, p2, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->isResizing()Z

    move-result v1

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_0
    iget-object p1, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object p1, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onDragPositioningStart(FFI)Landroid/graphics/Rect;
    .locals 2

    iput p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    invoke-interface {p2, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;->onDragStart(I)V

    iget p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRotation:I

    if-eq p2, p1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRotation:I

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragResizeEndTransition:Landroid/os/IBinder;

    invoke-interface {p1, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragResizeEndTransition:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v3, :cond_0

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p3, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p4, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p3, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p4, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragResizeEndTransition:Landroid/os/IBinder;

    invoke-interface {p1, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragResizeEndTransition:Landroid/os/IBinder;

    :cond_2
    invoke-interface {p5, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    const/4 p0, 0x1

    return p0
.end method
