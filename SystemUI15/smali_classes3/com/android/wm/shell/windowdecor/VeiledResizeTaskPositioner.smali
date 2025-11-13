.class public final Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
.implements Lcom/android/wm/shell/windowdecor/TaskDragResizer;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mCtrlType:I

.field public final mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

.field public mIsResizingOrAnimatingResize:Z

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 7

    new-instance v5, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isResizing$2()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

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

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    return p0
.end method

.method public final onDragPositioningEnd(FF)Landroid/graphics/Rect;
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing$2()Z

    move-result v0

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    const/4 v9, 0x0

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p2, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-boolean v0, p2, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->updateResizeVeil(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p2, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v11, v10, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->hideResizeVeil()V

    iput-boolean v9, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object p1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v11, v10, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :cond_3
    :goto_1
    iput v9, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/PointF;->set(FF)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onDragPositioningMove(FF)Landroid/graphics/Rect;
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing$2()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p1, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->loadAppInfoIfNeeded()V

    new-instance p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v5, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v6, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeilBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v9, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v10, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object p1, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    :goto_0
    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v4, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->viewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->showVeil(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-boolean v0, p2, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->updateResizeVeil(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object p1, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onDragPositioningStart(FFI)Landroid/graphics/Rect;
    .locals 2

    iput p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing$2()Z

    move-result p1

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

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_0
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    invoke-interface {p2, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;->onDragStart(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRotation:I

    if-eq p2, p1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRotation:I

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p4, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v0, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->hideResizeVeil()V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    :cond_1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    const/4 p1, 0x0

    invoke-interface {p5, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mIsResizingOrAnimatingResize:Z

    const/4 p0, 0x1

    return p0
.end method
