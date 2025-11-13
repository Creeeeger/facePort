.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
.implements Lcom/android/wm/shell/windowdecor/TaskDragResizer;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mCtrlType:I

.field public mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

.field public mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

.field public mImeAnimating:Z

.field public mImeShowing:Z

.field public mIsOnlyPositionChanged:Z

.field public mIsResizingOrAnimatingResize:Z

.field public mIsUserInteracting:Z

.field public mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

.field public mLastSnapType:I

.field public mMinFreeformHeight:I

.field public mMinVisibleHeight:I

.field public mMinVisibleWidth:I

.field public final mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

.field public final mRecentsTransitionHandler:Ljava/util/Optional;

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mStableBoundsWithIme:Landroid/graphics/Rect;

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public mToolType:I

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 11

    new-instance v5, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/TaskMotionController;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/TaskMotionController;Ljava/util/Optional;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/windowdecor/TaskMotionController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/TaskMotionController;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/TaskMotionController;Ljava/util/Optional;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/windowdecor/TaskMotionController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsUserInteracting:Z

    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsOnlyPositionChanged:Z

    iput v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    move-object v3, p1

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v4, p3

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v5, p4

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->asMultitaskingWindowDecoration()Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    :cond_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v5, :cond_2

    if-nez v2, :cond_1

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v10, :cond_2

    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;

    move-object v5, v2

    move-object v6, p3

    move-object v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/wm/shell/windowdecor/TaskMotionController;-><init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_4

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRecentsTransitionHandler:Ljava/util/Optional;

    :cond_4
    return-void
.end method


# virtual methods
.method public final getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFreeformThickness$1()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDexSnappingInNonFreeform()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isFreeformDragInNonDex()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isDexSnappingInNonFreeform()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isResizing$1()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

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

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    return p0
.end method

.method public final onDragPositioningEnd(FF)Landroid/graphics/Rect;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v7, p2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsUserInteracting:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v10, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    move v2, v10

    :goto_1
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v0, v7, v3}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v0, v3

    if-nez v4, :cond_3

    cmpl-float v3, v7, v3

    if-nez v3, :cond_3

    const-string v0, "TaskPositioner"

    const-string v2, "onDragPositioningEnd: invalid touch"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_2c

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v3

    const/4 v4, -0x5

    const/4 v5, 0x6

    if-eqz v3, :cond_f

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE:Z

    if-eqz v0, :cond_7

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->canResizeGesture()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    move-result v2

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v8

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v8

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskToSpecificPosition(IZII)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE_SA_LOGGING:Z

    if-eqz v0, :cond_2

    const-string v0, "2016"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->needToFullscreenTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    instance-of v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_6
    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE_SA_LOGGING:Z

    if-eqz v0, :cond_2

    const-string v0, "2015"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    const-string v0, "2090"

    const-string v2, "From popup resizing"

    invoke-static {v0, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget v11, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v11 .. v17}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    invoke-static {v0}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    move-result-object v11

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    iget v13, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    :cond_9
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeShowing:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinFreeformHeight:I

    if-le v0, v2, :cond_a

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_a
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v3, :cond_b

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v2, :cond_b

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustDexDockingTaskBounds(ILandroid/graphics/Rect;I)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v3, "resize_freeform"

    invoke-virtual {v0, v2, v10, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_c
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_4

    :cond_d
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v2, v5, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :goto_4
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    if-eqz v0, :cond_2

    iput-boolean v9, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    goto/16 :goto_2

    :cond_f
    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v2, :cond_10

    goto/16 :goto_2

    :cond_10
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_11

    iget v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    if-ne v12, v3, :cond_11

    iget v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    if-ne v12, v8, :cond_11

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v0, v10}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_2

    :cond_11
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v12, :cond_28

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v12, :cond_28

    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v13, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v13, :cond_28

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_12

    cmpl-float v0, v7, v2

    if-nez v0, :cond_12

    iput v9, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    iget-object v0, v12, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_12
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v7, :cond_16

    iget-object v12, v7, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-ne v4, v3, :cond_13

    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    move v2, v9

    goto/16 :goto_c

    :cond_13
    if-eq v4, v10, :cond_14

    if-ne v4, v8, :cond_15

    :cond_14
    iget v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    if-ne v3, v8, :cond_15

    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    :cond_15
    move v2, v10

    goto/16 :goto_c

    :cond_16
    iget v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    if-eq v7, v3, :cond_17

    if-eq v7, v5, :cond_17

    const/16 v3, 0x9

    if-eq v7, v3, :cond_17

    const/16 v3, 0xc

    if-eq v7, v3, :cond_17

    move v3, v9

    goto :goto_5

    :cond_17
    move v3, v10

    :goto_5
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-eq v5, v10, :cond_1f

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_9

    :cond_18
    iget v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    if-ne v5, v8, :cond_19

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v2, v10}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move v2, v9

    goto/16 :goto_b

    :cond_19
    if-eqz v5, :cond_20

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    const/16 v0, 0x20

    goto :goto_6

    :cond_1a
    move v0, v9

    :goto_6
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_11

    :cond_1b
    iget-object v3, v3, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz v3, :cond_26

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    check-cast v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v3, v2, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto/16 :goto_11

    :cond_1c
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v4

    goto :goto_7

    :cond_1d
    move v4, v9

    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v5, v7, :cond_1e

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v4, v8

    add-int/2addr v4, v7

    if-ne v5, v4, :cond_1e

    move v4, v10

    goto :goto_8

    :cond_1e
    move v4, v9

    :goto_8
    iput-boolean v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsOnlyPositionChanged:Z

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_1f
    :goto_9
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iput v9, v4, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x5

    invoke-virtual {v11, v2, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v4, v4, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_20
    :goto_a
    move v2, v10

    :goto_b
    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_21
    :goto_c
    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v2, :cond_26

    iget-object v2, v2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    iget v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    if-ne v2, v10, :cond_22

    move v2, v10

    goto :goto_d

    :cond_22
    move v2, v9

    :goto_d
    if-eqz v2, :cond_23

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    goto :goto_e

    :cond_23
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    :goto_e
    if-eqz v2, :cond_24

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v4, v4, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    goto :goto_f

    :cond_24
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    :goto_f
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v7, v5}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v5

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v5, v7, v12, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_25

    move-object v2, v3

    goto :goto_10

    :cond_25
    move-object v2, v4

    :goto_10
    invoke-virtual {v11, v5, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCandidateTask(I)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    :cond_26
    :goto_11
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsOnlyPositionChanged:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    const-string v2, "mIsOnlyPositionChanged"

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->clearAllDockingTasks(Ljava/lang/String;)V

    :cond_27
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_2

    :cond_28
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v3, :cond_4f

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    if-eqz v3, :cond_29

    move v3, v10

    goto :goto_12

    :cond_29
    move v3, v9

    :goto_12
    if-eqz v3, :cond_4f

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v3, v3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v3, v3, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v3, v3, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-nez v3, :cond_4f

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-nez v2, :cond_2a

    goto/16 :goto_1f

    :cond_2a
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const v14, -0x39c48000    # -12000.0f

    cmpg-float v14, v2, v14

    if-gez v14, :cond_2b

    move v14, v10

    goto :goto_13

    :cond_2b
    move v14, v9

    :goto_13
    const v15, 0x463b8000    # 12000.0f

    cmpl-float v2, v2, v15

    if-lez v2, :cond_2c

    move v2, v10

    goto :goto_14

    :cond_2c
    move v2, v9

    :goto_14
    iget-object v15, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v15}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v16

    if-eqz v16, :cond_2d

    iget v9, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    iget v6, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    add-int/2addr v6, v9

    goto :goto_15

    :cond_2d
    iget-object v6, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v9, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v10, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v10}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v10

    if-eqz v10, :cond_2e

    invoke-virtual {v9}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v9, v6

    div-int/lit8 v6, v9, 0x2

    goto :goto_15

    :cond_2e
    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v8

    goto :goto_15

    :cond_2f
    const/4 v6, 0x0

    :goto_15
    if-eqz v16, :cond_31

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    if-ge v9, v10, :cond_30

    :goto_16
    const/4 v9, 0x1

    goto :goto_17

    :cond_30
    const/4 v9, 0x0

    goto :goto_17

    :cond_31
    iget v9, v13, Landroid/graphics/Rect;->left:I

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v6

    if-ge v9, v10, :cond_30

    goto :goto_16

    :goto_17
    if-eqz v16, :cond_33

    iget v10, v13, Landroid/graphics/Rect;->left:I

    iget-object v8, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    if-le v10, v8, :cond_32

    :goto_18
    const/4 v6, 0x1

    goto :goto_19

    :cond_32
    const/4 v6, 0x0

    goto :goto_19

    :cond_33
    iget v8, v13, Landroid/graphics/Rect;->right:I

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    if-le v8, v10, :cond_32

    goto :goto_18

    :goto_19
    iget v8, v15, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-eqz v14, :cond_35

    const/4 v10, 0x2

    if-ne v8, v10, :cond_34

    const/4 v10, 0x1

    goto :goto_1a

    :cond_34
    const/4 v10, 0x0

    :goto_1a
    if-eqz v10, :cond_37

    :cond_35
    if-eqz v2, :cond_38

    const/4 v2, 0x1

    if-ne v8, v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1b

    :cond_36
    const/4 v2, 0x0

    :goto_1b
    if-nez v2, :cond_38

    :cond_37
    const/4 v2, 0x1

    goto :goto_1c

    :cond_38
    const/4 v2, 0x0

    :goto_1c
    if-nez v9, :cond_3a

    if-eqz v6, :cond_39

    goto :goto_1d

    :cond_39
    const/4 v6, 0x0

    goto :goto_1e

    :cond_3a
    :goto_1d
    const/4 v6, 0x1

    :goto_1e
    if-nez v2, :cond_3b

    if-eqz v6, :cond_3c

    :cond_3b
    const/4 v2, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2b

    :cond_3c
    :goto_1f
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v6, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-nez v6, :cond_3e

    :cond_3d
    :goto_20
    const/4 v6, 0x0

    goto/16 :goto_22

    :cond_3e
    new-instance v6, Landroid/graphics/PointF;

    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    invoke-direct {v6, v8}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iget v8, v6, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-nez v10, :cond_3f

    iget v10, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_3f

    goto :goto_20

    :cond_3f
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v2, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mMinimumFlingVelocity:I

    int-to-float v2, v2

    cmpl-float v8, v8, v2

    if-gtz v8, :cond_40

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v2, v8, v2

    if-lez v2, :cond_3d

    :cond_40
    iget v2, v6, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    cmpg-float v9, v2, v8

    if-gez v9, :cond_41

    const/4 v8, 0x1

    goto :goto_21

    :cond_41
    const/4 v8, 0x0

    :goto_21
    if-eqz v8, :cond_42

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-lt v9, v10, :cond_3d

    :cond_42
    if-nez v8, :cond_43

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_43

    goto :goto_20

    :cond_43
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v9, 0x442f0000    # 700.0f

    cmpg-float v2, v2, v9

    if-gez v2, :cond_45

    if-eqz v8, :cond_44

    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget-object v9, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, -0x1e

    if-lt v2, v9, :cond_3d

    :cond_44
    if-nez v8, :cond_45

    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget-object v8, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x1e

    if-le v2, v8, :cond_45

    goto :goto_20

    :cond_45
    iget v2, v6, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4e

    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v8, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v8, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->isTargetTaskImeShowing(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    :goto_22
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v8

    iget-object v9, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v9, :cond_47

    iget v9, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v9

    if-eqz v9, :cond_46

    if-nez v8, :cond_46

    goto :goto_23

    :cond_46
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleViewWidth()I

    move-result v2

    sub-int/2addr v8, v2

    const/4 v2, 0x2

    div-int/2addr v8, v2

    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int v9, v2, v8

    iget-object v10, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v14, v10, Landroid/graphics/Rect;->left:I

    if-lt v9, v14, :cond_48

    iget v9, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v8

    iget v15, v10, Landroid/graphics/Rect;->right:I

    if-gt v9, v15, :cond_48

    :cond_47
    :goto_23
    move-object v8, v13

    goto :goto_25

    :cond_48
    sub-int v2, v14, v2

    if-le v2, v8, :cond_49

    sub-int v2, v14, v8

    goto :goto_24

    :cond_49
    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget v9, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v9

    if-le v2, v8, :cond_4a

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v9, v2

    add-int v2, v9, v8

    goto :goto_24

    :cond_4a
    const/4 v2, 0x0

    :goto_24
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v2

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v2, v9, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_25
    if-eq v8, v13, :cond_4b

    const/4 v2, 0x1

    invoke-virtual {v12, v13, v8, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move v8, v6

    :goto_26
    const/4 v2, 0x0

    goto/16 :goto_2a

    :cond_4b
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v2

    if-eqz v2, :cond_4d

    monitor-enter v12

    :try_start_0
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v2, :cond_4c

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x1

    goto :goto_27

    :catchall_0
    move-exception v0

    goto :goto_28

    :cond_4c
    const/4 v2, 0x0

    :goto_27
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4d

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v8, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v23}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    invoke-virtual {v12, v11, v8}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v2, v8}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    goto :goto_29

    :goto_28
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4d
    :goto_29
    move-object v2, v13

    move v8, v6

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v0, v13}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_26

    :cond_4e
    move v8, v6

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    invoke-virtual {v12, v11, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v0, v12, v13, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;I)V

    invoke-virtual {v12, v13, v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->moveToTarget(Landroid/graphics/Rect;Ljava/lang/Runnable;Z)V

    :goto_2a
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2c

    :goto_2b
    iput-boolean v2, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v11, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    new-instance v3, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v12, v13, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;I)V

    invoke-virtual {v12, v13, v3, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->moveToTarget(Landroid/graphics/Rect;Ljava/lang/Runnable;Z)V

    goto :goto_2c

    :cond_4f
    const/4 v8, 0x0

    if-eqz v2, :cond_50

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_2c

    :cond_50
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3, v4, v0, v7}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v0, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v0, :cond_51

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v11}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2c

    :cond_51
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, v5, v11, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :goto_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    if-eqz v0, :cond_52

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v2, :cond_52

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v2, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->playShadowAnimation(Landroid/graphics/Rect;Z)V

    :cond_52
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v2, :cond_53

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRecentsTransitionHandler:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRecentsTransitionHandler:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-boolean v3, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    :cond_53
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE:Z

    if-eqz v2, :cond_54

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v2, :cond_54

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_54
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v3, :cond_55

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsUserInteracting:Z

    :cond_55
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->dismiss()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v0, :cond_59

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v0, :cond_59

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-nez v2, :cond_56

    goto :goto_2d

    :cond_56
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v2

    if-nez v2, :cond_57

    goto :goto_2d

    :cond_57
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_58

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_58
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    move-result v4

    iput v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowElevation:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v8, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const-string v4, "elevation"

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_59
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isFreeformDragInNonDex()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v5, v2, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v6, v5, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v6, v6, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz v6, :cond_5a

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->removeTaskToMotionInfo(Z)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    :try_start_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/16 v6, 0x90

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityTaskManager;->removeTaskWithFlags(II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2e

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to removeTask in onTaskDragEnd: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FreeformDragPositioningController$FreeformDragListener"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5a
    :goto_2e
    iget-object v0, v5, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-nez v0, :cond_5b

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->saveFreeformBounds(I)V

    :cond_5b
    iget-object v0, v2, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object v0, v0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_5c
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    if-eqz v0, :cond_5d

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v4, v2}, Landroid/window/TaskOrganizer;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V

    :cond_5d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v0, :cond_5f

    iget-boolean v2, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    if-eqz v2, :cond_5e

    iget-object v2, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v4, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    :cond_5e
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    :cond_5f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final onDragPositioningMove(FF)Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-eqz v1, :cond_0

    iput-boolean v9, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsUserInteracting:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v1

    :cond_2
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeShowing:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object v1

    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->setAdjusted(Z)V

    iput v9, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    iput v9, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    iput v9, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v7, v8, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE:Z

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_11

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->right:I

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v16, v15, v13

    sub-int v17, v12, v14

    iget v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    and-int/lit8 v18, v9, 0x1

    if-eqz v18, :cond_4

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleWidth:I

    sub-int v9, v16, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_0

    :cond_4
    and-int/2addr v2, v9

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleWidth:I

    add-int v9, v16, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_5
    :goto_0
    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_6

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleHeight:I

    sub-int v9, v17, v11

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_1

    :cond_6
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleHeight:I

    add-int v9, v17, v11

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    :cond_7
    :goto_1
    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_8

    sub-int v13, v15, v16

    goto :goto_2

    :cond_8
    add-int v15, v13, v16

    :goto_2
    and-int/2addr v2, v4

    if-eqz v2, :cond_9

    sub-int v14, v12, v17

    goto :goto_3

    :cond_9
    add-int v12, v14, v17

    :goto_3
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeShowing:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinFreeformHeight:I

    if-le v2, v4, :cond_a

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v12, v2, :cond_a

    move v12, v2

    :cond_a
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_b

    move v9, v3

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    if-eq v9, v2, :cond_c

    iput-boolean v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    iget-object v2, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v2, v9}, Landroid/window/TaskOrganizer;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V

    :cond_c
    if-eqz v1, :cond_d

    iget-boolean v2, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->setNotAdjustedBounds(Landroid/graphics/Rect;)V

    :cond_d
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_e

    iget-boolean v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    float-to-int v4, v7

    float-to-int v6, v8

    invoke-virtual {v1, v2, v4, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->handleResizeGesture(Landroid/graphics/Rect;II)V

    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    invoke-static {v1}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    move-result-object v9

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v1, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    iget v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRecentsTransitionHandler:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRecentsTransitionHandler:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-boolean v2, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    if-eq v2, v3, :cond_10

    iput-boolean v3, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    :cond_10
    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    goto/16 :goto_8

    :cond_11
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v9, :cond_12

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isDexSnappingInNonFreeform()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v6

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->show(FFLandroid/app/TaskInfo;II)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    goto/16 :goto_8

    :cond_12
    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_8

    :cond_13
    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    if-nez v1, :cond_1d

    if-eqz v9, :cond_14

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v1, :cond_14

    iget-object v10, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v12

    move v13, v2

    move/from16 v2, p1

    move v14, v3

    move/from16 v3, p2

    move v15, v4

    move-object v4, v10

    move-object v10, v5

    move v5, v11

    move-object v11, v6

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->show(FFLandroid/app/TaskInfo;II)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    goto :goto_5

    :cond_14
    move v13, v2

    move v14, v3

    move v15, v4

    move-object v10, v5

    move-object v11, v6

    :goto_5
    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isDexSnappingInNonFreeform()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_8

    :cond_15
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeShowing:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    move-object v2, v11

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_7

    :cond_16
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v9, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->getStashScaleOffsetX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v2, v1

    :cond_17
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_18
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v1, :cond_1c

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v2, v3, v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result v1

    if-ne v1, v15, :cond_19

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_1b

    goto :goto_6

    :cond_19
    if-ne v1, v13, :cond_1a

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_1b

    goto :goto_6

    :cond_1a
    if-ne v1, v14, :cond_1b

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_1b

    goto :goto_6

    :cond_1b
    const/4 v14, 0x0

    :goto_6
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    if-eq v14, v1, :cond_1c

    iput-boolean v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v1, v14}, Landroid/window/TaskOrganizer;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V

    :cond_1c
    :goto_7
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isFreeformDragInNonDex()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v2, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    iget-object v1, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DismissViewManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    :cond_1e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public final onDragPositioningStart(FFI)Landroid/graphics/Rect;
    .locals 11

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-eqz v0, :cond_0

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-nez v4, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1

    :cond_1
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsUserInteracting:Z

    :cond_2
    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object p3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformImeController()Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isBoundsAnimating()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    const-string v5, "drag-touch"

    invoke-virtual {v1, p3, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p3

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz p3, :cond_5

    iget-object p3, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->isTargetTaskImeShowing(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeShowing:Z

    if-eqz p3, :cond_5

    iget-object p3, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v6, p3}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    or-int/2addr v9, v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {p3, v8, v9, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget v7, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBoundsWithIme:Landroid/graphics/Rect;

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->getFreeformThickness$1()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p3, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_GESTURE:Z

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v7, :cond_6

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7, v8, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v5, v7}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_6
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;

    invoke-interface {v7, v5}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;->onDragStart(I)V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v5

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRotation:I

    if-eq v7, v5, :cond_8

    :cond_7
    iput v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRotation:I

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    :cond_8
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v7

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_9
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    :goto_3
    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_b
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v8, 0x30

    invoke-static {v8, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleWidth:I

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v8, 0x20

    invoke-static {v8, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinVisibleHeight:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    if-eqz v9, :cond_e

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    invoke-static {v0}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompat(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    goto :goto_4

    :cond_e
    iget-boolean v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_f

    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v9

    invoke-direct {v0, v7, v9, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    goto :goto_4

    :cond_f
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget v8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->setCtrlType(I)V

    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lt v8, v9, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    iget-object v9, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateMinMaxSizeIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Z)V

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->getMinHeight()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMinFreeformHeight:I

    if-eqz p3, :cond_11

    iget-boolean p3, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez p3, :cond_11

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object p3

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {p3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object p3

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateResizeGestureInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_11
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz p3, :cond_12

    iget-boolean p3, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez p3, :cond_13

    :cond_12
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz p3, :cond_14

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_14

    iget p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_14

    :cond_13
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {p3, v0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    new-instance p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;

    invoke-direct {p3, v7}, Lcom/android/wm/shell/freeform/DexSnappingGuide;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mLastSnapType:I

    iget-object v5, p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v3, p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    :cond_14
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isFreeformDragInNonDex()Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v0, p3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object p2, p3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p3

    if-nez p3, :cond_15

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DismissViewManager;->createDismissView()V

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DismissViewManager;->createOrUpdateWrapper()V

    :cond_15
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DismissViewManager;->show()V

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DismissViewManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    :cond_16
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    if-eqz p1, :cond_17

    if-eqz v1, :cond_17

    iget-boolean p1, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isResizing$1()Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->playShadowAnimation(Landroid/graphics/Rect;Z)V

    :cond_17
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final removeTaskToMotionInfo(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final resetStashedFreeform(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget v6, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v7, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v4, v1, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v5, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v6, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    invoke-virtual {v2, v5, p1, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_4
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
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

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object p2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v2, :cond_0

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p4, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
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

    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    :cond_2
    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mCtrlType:I

    const/4 p1, 0x0

    invoke-interface {p5, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    const/4 p0, 0x1

    return p0
.end method
