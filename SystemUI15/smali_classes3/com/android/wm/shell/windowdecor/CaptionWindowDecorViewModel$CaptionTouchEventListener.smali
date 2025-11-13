.class public final Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mIsDragging:Z

.field public final mTaskId:I

.field public final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v3, -0x1

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-boolean p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return v1

    :cond_4
    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    :cond_5
    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-interface {v1, v3, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/16 :goto_4

    :cond_6
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a4

    invoke-static {v3, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v1, v4, :cond_7

    const v1, 0x7f070418

    goto :goto_1

    :cond_7
    const v1, 0x7f07141b

    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701a5

    invoke-static {v4, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget v6, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v7, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    new-instance v0, Landroid/graphics/Rect;

    add-int v8, v3, v4

    add-int/2addr v8, v1

    if-le v8, v5, :cond_8

    move v9, v2

    goto :goto_2

    :cond_8
    neg-int v9, v5

    add-int/2addr v9, v1

    add-int/2addr v9, v4

    :goto_2
    iget v4, v7, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_9

    sub-int/2addr v6, v5

    goto :goto_3

    :cond_9
    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    :goto_3
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v9, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    invoke-static {p2, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->snapTaskBoundsIfNecessary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eq p2, v0, :cond_a

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p2, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :cond_a
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return p1

    :cond_b
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-interface {p1, v0, p2, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return v2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a7

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a013b

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDisplayId:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0717

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->minimizeTask(Landroid/window/WindowContainerToken;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a06b4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v0, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a024a

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez p1, :cond_1

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
