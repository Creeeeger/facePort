.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnGenericMotionListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mCloseMaximizeWindowRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mHasLongClicked:Z

.field public mIsDragging:Z

.field public mShouldPilferCaptionEvents:Z

.field public final mTaskId:I

.field public final mTaskToken:Landroid/window/WindowContainerToken;

.field public mTouchscreenInUse:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance p3, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    new-instance p3, Landroid/view/GestureDetector;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDisplayId:I

    new-instance p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mCloseMaximizeWindowRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v5, :cond_0

    return v6

    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f0a02a7

    if-eq v4, v7, :cond_3

    const v7, 0x7f0a06b4

    if-eq v4, v7, :cond_3

    const v7, 0x7f0a087a

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v5

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_16

    const/4 v8, 0x5

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v5, :cond_8

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_8

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-boolean v4, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v4, :cond_5

    :goto_2
    return v5

    :cond_5
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    iget v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ne v4, v9, :cond_6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    :cond_6
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v9

    invoke-interface {v6, v7, v9}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-eq v4, v8, :cond_7

    goto :goto_3

    :cond_7
    iget v4, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v7, v3, v2, v1, v4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->updateVisualIndicator(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    :goto_3
    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    return v5

    :cond_8
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    if-nez v7, :cond_9

    return v6

    :cond_9
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-ne v7, v9, :cond_a

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    :cond_a
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v12

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v13

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v9, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v13

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v14

    invoke-interface {v12, v13, v14}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    move-result-object v12

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v13, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v14, Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v15

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    invoke-direct {v14, v15, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    check-cast v1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f0702f7

    invoke-static {v7, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v15, 0x7f070418

    invoke-static {v1, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v15, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v10, 0x7f070323

    invoke-static {v15, v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v10

    iget-object v15, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v11, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget v11, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5, v6}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    new-instance v2, Landroid/graphics/Rect;

    add-int v16, v7, v10

    add-int v6, v16, v1

    if-le v6, v15, :cond_b

    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    neg-int v8, v15

    add-int/2addr v8, v1

    add-int/2addr v8, v10

    :goto_4
    iget v10, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v15, :cond_c

    sub-int/2addr v11, v15

    goto :goto_5

    :cond_c
    sub-int/2addr v11, v1

    sub-int/2addr v11, v7

    :goto_5
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    invoke-direct {v2, v8, v10, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v1, v13, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v14, Landroid/graphics/PointF;->x:F

    iget v7, v12, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->updateIndicatorType(Landroid/graphics/PointF;I)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    move-result-object v1

    sget-object v5, Lcom/android/wm/shell/desktopmode/DesktopTasksController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_14

    const/4 v5, 0x2

    if-eq v1, v5, :cond_13

    const/4 v5, 0x3

    if-eq v1, v5, :cond_12

    const/4 v5, 0x4

    if-eq v1, v5, :cond_10

    const/4 v5, 0x5

    if-eq v1, v5, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not be receiving TO_DESKTOP_INDICATOR for a freeform task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {v12, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->snapTaskBoundsIfNecessary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, v12}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v13, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :cond_11
    invoke-virtual {v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    goto :goto_6

    :cond_12
    invoke-virtual {v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;->RIGHT:Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;

    invoke-virtual {v13, v3, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->snapToHalfScreen(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;->LEFT:Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;

    invoke-virtual {v13, v3, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->snapToHalfScreen(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;)V

    goto :goto_6

    :cond_14
    sget-object v1, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->TASK_DRAG:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-virtual {v13, v3, v9, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    :goto_6
    invoke-virtual {v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :goto_7
    if-eqz v4, :cond_15

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mHasLongClicked:Z

    if-nez v1, :cond_15

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    const/4 v3, 0x1

    return v3

    :cond_16
    move v3, v5

    move v2, v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    invoke-interface {v5, v6, v1, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mHasLongClicked:Z

    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a02a7

    if-ne v5, v6, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitPosition(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v1, v4

    :cond_1
    iget-object v0, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToFullscreen(I)V

    goto/16 :goto_b

    :cond_2
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object v4, v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isOnlyActiveTask(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_b

    :cond_4
    const v6, 0x7f0a013b

    if-ne v5, v6, :cond_5

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDisplayId:I

    invoke-virtual {v2, v4, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    goto/16 :goto_b

    :cond_5
    const v6, 0x7f0a024b

    const v7, 0x7f0a02aa

    const v8, 0x7f0a0bed

    const v9, 0x7f0a0484

    const v10, 0x7f0a0352

    if-eq v5, v6, :cond_12

    const v6, 0x7f0a087a

    if-ne v5, v6, :cond_6

    goto/16 :goto_2

    :cond_6
    if-ne v5, v10, :cond_a

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v6, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-ne v6, v1, :cond_7

    const v1, 0x7f0702ff

    goto :goto_0

    :cond_7
    const v1, 0x7f0702fe

    :goto_0
    if-eqz v1, :cond_9

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionVisible:Z

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;-><init>(Landroid/window/WindowContainerToken;Landroid/os/Binder;Landroid/graphics/Rect;[Landroid/graphics/Rect;II)V

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iput-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->addOrUpdate(Landroid/window/WindowContainerTransaction;)V

    :cond_9
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    sget-object v4, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->APP_HANDLE_MENU_BUTTON:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_b

    :cond_a
    if-ne v5, v9, :cond_c

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToFullscreen(I)V

    goto/16 :goto_b

    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    sget-object v2, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->APP_HANDLE_MENU_BUTTON:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    iget-object v3, v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    goto/16 :goto_b

    :cond_c
    if-ne v5, v8, :cond_d

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, v4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->requestSplit(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto/16 :goto_b

    :cond_d
    if-ne v5, v7, :cond_e

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_b

    :cond_e
    const v1, 0x7f0a06b4

    if-ne v5, v1, :cond_f

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleDesktopTaskSize(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_b

    :cond_f
    const v1, 0x7f0a06ae

    if-ne v5, v1, :cond_10

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleDesktopTaskSize(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    goto/16 :goto_b

    :cond_10
    const v1, 0x7f0a06b0

    if-ne v5, v1, :cond_11

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;->LEFT:Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->snapToHalfScreen(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    goto/16 :goto_b

    :cond_11
    const v1, 0x7f0a06b2

    if-ne v5, v1, :cond_20

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;->RIGHT:Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->snapToHalfScreen(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    goto/16 :goto_b

    :cond_12
    :goto_2
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v6, :cond_13

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_13
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->loadAppInfoIfNeeded()V

    new-instance v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;

    invoke-direct {v5, v3}, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIconBitmap:Landroid/graphics/Bitmap;

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mName:Ljava/lang/CharSequence;

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iput v6, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mLayoutId:I

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v20

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    iget-object v15, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v14, Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget v13, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mLayoutId:I

    iget-object v12, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v11, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v2, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mName:Ljava/lang/CharSequence;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mParent:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-object/from16 v16, v11

    move-object v11, v14

    move-object/from16 v17, v12

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v14, v17

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v19, v0

    move/from16 v21, v6

    invoke-direct/range {v11 .. v21}, Lcom/android/wm/shell/windowdecor/HandleMenu;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;ILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/splitscreen/SplitScreenController;ZI)V

    iput-object v5, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->onHandleMenuOpened()V

    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/window/SurfaceSyncGroup;

    const-string v2, "HandleMenu"

    invoke-direct {v1, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-static {}, Lcom/android/window/flags/Flags;->enableAdditionalWindowsAboveStatusBar()Z

    :cond_14
    iget v12, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    iget v13, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuHeight:I

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceControl$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Handle Menu of Task="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    iget-object v14, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    const-string v14, "WindowDecoration.addWindow"

    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v15

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v14, 0x7f0d00e0

    const/4 v4, 0x0

    invoke-virtual {v11, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {v2, v15, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v15, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x2

    const/16 v16, 0x8

    const/16 v18, -0x2

    move-object v11, v3

    move-object v10, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Additional window of Task="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v11, Landroid/view/WindowlessWindowManager;

    iget-object v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v11, v12, v5, v4}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iget-object v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v13, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v14, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v14, v11}, Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v12

    new-instance v13, Lcom/android/wm/shell/windowdecor/WindowDecoration$$ExternalSyntheticLambda0;

    invoke-direct {v13, v11, v10, v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v12, v13}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z

    new-instance v3, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-direct {v3, v5, v11, v6}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    iget v6, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    iget v10, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionHeight:I

    int-to-float v10, v10

    invoke-direct {v5, v3, v6, v10}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;-><init>(Landroid/view/View;IF)V

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/HandleMenuImageButton;

    const v3, 0x7f0a010c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a010d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v6, v2, Lcom/android/wm/shell/windowdecor/HandleMenuImageButton;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x6

    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    const/16 v5, 0x8

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const v7, 0x7f0a0460

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v8, 0x7f0a0352

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    const/16 v10, 0x20

    if-ne v9, v10, :cond_15

    const/4 v9, 0x1

    goto :goto_3

    :cond_15
    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    const v11, 0x11200b6

    const v12, 0x11200bf

    filled-new-array {v11, v12}, [I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/high16 v11, -0x1000000

    const/4 v12, -0x1

    if-eqz v9, :cond_16

    move v14, v12

    :goto_4
    const/4 v13, 0x0

    goto :goto_5

    :cond_16
    move v14, v11

    goto :goto_4

    :goto_5
    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    if-eqz v9, :cond_17

    move v11, v12

    :cond_17
    const/4 v9, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x2

    new-array v12, v10, [Landroid/content/res/ColorStateList;

    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    aput-object v10, v12, v9

    aget-object v11, v12, v13

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v12

    if-ne v12, v9, :cond_18

    move-object v9, v10

    goto :goto_6

    :cond_18
    move-object v9, v11

    :goto_6
    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-ne v12, v2, :cond_19

    move-object v3, v10

    goto :goto_7

    :cond_19
    move-object v3, v11

    :goto_7
    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x2

    if-ne v12, v3, :cond_1a

    move-object v3, v10

    goto :goto_8

    :cond_1a
    move-object v3, v11

    :goto_8
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x5

    if-ne v12, v3, :cond_1b

    goto :goto_9

    :cond_1b
    move-object v10, v11

    :goto_9
    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1c
    const v3, 0x7f0a0737

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_1d

    goto :goto_a

    :cond_1d
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->prepareMenuForAnimation()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0xd9

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateAppInfoPillOpen()V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateWindowingPillOpen()V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateMoreActionsPillOpen()V

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runAnimations(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_1e
    :goto_a
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->prepareMenuForAnimation()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v5, [F

    fill-array-data v8, :array_3

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->captionHeight:F

    neg-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->handleMenu:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v9, 0x0

    aput v1, v5, v9

    const/4 v1, 0x0

    const/4 v9, 0x1

    aput v1, v5, v9

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateAppInfoPillOpen()V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateWindowingPillOpen()V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateMoreActionsPillOpen()V

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runAnimations(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_1f
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    :cond_20
    :goto_b
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleDesktopTaskSize(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0a06b4

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v5, :cond_2

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    check-cast p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverDisabled:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->cancelHoverAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->maximizeWindow:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    const/16 v0, 0xff

    filled-new-array {v3, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$1$1;-><init>(Lcom/android/wm/shell/windowdecor/MaximizeButtonView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    filled-new-array {v1}, [I

    move-result-object v1

    const-string/jumbo v2, "progress"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnStart$1;-><init>(Lcom/android/wm/shell/windowdecor/MaximizeButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;-><init>(Lcom/android/wm/shell/windowdecor/MaximizeButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    aput-object v0, p2, v4

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    if-eq p1, v5, :cond_3

    sget-object v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->Companion:Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;->isMaximizeMenuView(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mCloseMaximizeWindowRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eq p1, v5, :cond_4

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->setSnapButtonsColorOnHover(Landroid/view/MotionEvent;I)V

    :cond_4
    :goto_0
    return v4

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->Companion:Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;->isMaximizeMenuView(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->setSnapButtonsColorOnHover(Landroid/view/MotionEvent;I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mCloseMaximizeWindowRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne p1, v5, :cond_7

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    check-cast p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->cancelHoverAnimation()V

    goto :goto_1

    :cond_7
    if-eq p1, v5, :cond_8

    sget-object v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->Companion:Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;->isMaximizeMenuView(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mCloseMaximizeWindowRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    const-wide/16 v6, 0x96

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eq p1, v5, :cond_a

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    int-to-float v0, v1

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_9

    move v3, v4

    :cond_9
    const p2, 0x7f0a06b1

    if-ne p1, p2, :cond_a

    if-nez v3, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz p0, :cond_a

    sget-object p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->NONE:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->updateSplitSnapSelection(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;)V

    :cond_a
    :goto_1
    return v4

    :cond_b
    :goto_2
    return v3
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06b4

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTouchscreenInUse:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mHasLongClicked:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->createMaximizeMenu()V

    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x1002

    and-int/2addr v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTouchscreenInUse:Z

    :cond_1
    const v1, 0x7f0a024b

    const v2, 0x7f0a06b4

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0353

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a087a

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02a7

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    return v5

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v7, v6}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    if-eq v6, v3, :cond_6

    if-ne v6, v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v7, :cond_a

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v8}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v10, Landroid/graphics/Point;

    aget v11, v9, v5

    aget v9, v9, v4

    invoke-direct {v10, v11, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual {v9, p2, v10}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->shouldHandleEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_4

    :cond_7
    move v9, v5

    :goto_4
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-nez v8, :cond_9

    :cond_8
    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mShouldPilferCaptionEvents:Z

    :cond_a
    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mShouldPilferCaptionEvents:Z

    if-nez v4, :cond_b

    return v5

    :cond_b
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    :cond_c
    if-eqz v3, :cond_d

    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mShouldPilferCaptionEvents:Z

    :cond_d
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mHasLongClicked:Z

    if-nez v3, :cond_e

    if-eq v0, v2, :cond_e

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenuIfNeeded(Landroid/view/MotionEvent;)V

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
