.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mTasksOnDisplay:I

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_0
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroid/view/MotionEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    move-object v4, v1

    check-cast v4, Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v7, v6, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object v7, v7, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_1

    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v9

    goto/16 :goto_4

    :cond_2
    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v10

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    iget-object v12, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v12, :cond_4

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    if-eqz v11, :cond_7

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v7, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v11, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    goto :goto_3

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v12, v7, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    int-to-float v12, v12

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v12, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    goto :goto_3

    :cond_6
    move-object v7, v9

    :goto_3
    if-nez v7, :cond_8

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object v7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object v7

    :cond_8
    :goto_4
    iget-object v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_29

    iget-boolean v11, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInImmersiveMode:Z

    if-nez v11, :cond_29

    const/4 v11, 0x5

    if-eqz v7, :cond_9

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v13

    if-ne v13, v11, :cond_9

    iget-boolean v13, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v13, :cond_29

    :cond_9
    if-nez v7, :cond_a

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v10, :cond_29

    iput-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    goto/16 :goto_d

    :cond_a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    if-eqz v13, :cond_27

    iget-object v14, v6, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    const/4 v15, 0x2

    if-eq v13, v10, :cond_1a

    if-eq v13, v15, :cond_d

    if-eq v13, v12, :cond_c

    const/4 v3, 0x7

    if-eq v13, v3, :cond_b

    const/16 v3, 0x9

    if-eq v13, v3, :cond_b

    const/16 v3, 0xa

    if-eq v13, v3, :cond_b

    goto/16 :goto_d

    :cond_b
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateHoverAndPressStatus(Landroid/view/MotionEvent;)V

    goto/16 :goto_d

    :cond_c
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    iput-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    goto/16 :goto_d

    :cond_d
    iget-boolean v13, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v13, :cond_29

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v9, v13}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v9

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v9, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    mul-int/2addr v9, v15

    int-to-float v9, v9

    cmpg-float v9, v13, v9

    if-gez v9, :cond_e

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    if-nez v9, :cond_e

    goto/16 :goto_d

    :cond_e
    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-virtual {v6, v9, v13, v15, v12}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->updateVisualIndicator(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    move-result-object v6

    sget-object v9, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->TO_FULLSCREEN_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    if-eq v6, v9, :cond_18

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    if-nez v6, :cond_18

    new-instance v6, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v12, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-direct {v6, v9, v12, v13, v15}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    iput-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v12, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v15, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "DesktopTasksController: startDragToDesktop taskId=%d"

    invoke-static {v13, v12, v15}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v12, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    if-eqz v12, :cond_f

    const-string v6, "DragToDesktop: Drag to desktop transition already in progress."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v6, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_f
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->setTransientLaunch()Landroid/app/ActivityOptions;

    move v15, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v12, v11, v8, v9}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    invoke-virtual {v12, v10}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->context:Landroid/content/Context;

    iget-object v9, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->launchHomeIntent:Landroid/content/Intent;

    const v11, 0x3000008

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v8, v3, v9, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Landroid/window/WindowContainerTransaction;

    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v11, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->launchHomeIntent:Landroid/content/Intent;

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v8, v11, v12}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v11, 0x3f2

    invoke-virtual {v8, v11, v9, v14}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object v20

    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move v9, v15

    if-nez v8, :cond_10

    const/4 v8, 0x0

    :cond_10
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v8, :cond_11

    const/4 v8, 0x0

    :cond_11
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitPosition(I)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_13

    :cond_12
    const/16 v16, 0x0

    goto :goto_6

    :cond_13
    if-ne v8, v10, :cond_14

    goto :goto_5

    :cond_14
    move v3, v10

    :goto_5
    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v8, :cond_15

    const/4 v8, 0x0

    :cond_15
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_12

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_6
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v29

    new-instance v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v30, 0x7f8

    const/16 v31, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v9

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v31}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;-><init>(ILcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;ZLandroid/window/TransitionInfo$Change;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected split task to have a counterpart."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v29, 0x7f8

    const/16 v30, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v9

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v30}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromFullscreen;-><init>(ILcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    iput-object v3, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    :cond_18
    :goto_8
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    if-eqz v3, :cond_29

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->mostRecentInput:Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v6, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->allowSurfaceChangesOnMove:Z

    if-eqz v6, :cond_29

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_19

    goto/16 :goto_d

    :cond_19
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v3, v6, v8}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->setTaskPosition(FF)V

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->transactionFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v8, v9, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto/16 :goto_d

    :cond_1a
    iget-boolean v8, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v8, :cond_26

    iget-object v8, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v8, v9, v12, v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->updateVisualIndicator(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    if-eqz v8, :cond_25

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateHoverAndPressStatus(Landroid/view/MotionEvent;)V

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-direct {v8, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getVisualIndicator()Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    move-result-object v12

    if-nez v12, :cond_1c

    :cond_1b
    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_1c
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v13

    invoke-virtual {v12, v8, v13}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->updateIndicatorType(Landroid/graphics/PointF;I)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    move-result-object v8

    sget-object v12, Lcom/android/wm/shell/desktopmode/DesktopTasksController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v12, v8

    if-eq v8, v10, :cond_24

    if-eq v8, v15, :cond_23

    const/4 v12, 0x3

    if-eq v8, v12, :cond_22

    const/4 v12, 0x4

    if-eq v8, v12, :cond_24

    if-eq v8, v11, :cond_1d

    goto :goto_9

    :cond_1d
    iget-object v8, v6, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iget v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v8, v11}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v8

    if-nez v8, :cond_1e

    goto :goto_9

    :cond_1e
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingDynamicInitialBounds()Z

    invoke-static {v8}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getDefaultDesktopTaskBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    move-result-object v8

    sget-object v11, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v13, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "DesktopTasksController: finalizeDragToDesktop taskId=%d"

    invoke-static {v12, v11, v13}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v6, v11, v9}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitSplitIfApplicable(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    iget v12, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v13, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v11, v13}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;Ljava/lang/Integer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    invoke-virtual {v6, v11, v9}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v9, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v8, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    if-eqz v8, :cond_1f

    move v3, v10

    :cond_1f
    if-nez v3, :cond_20

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_20
    invoke-virtual {v14}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getStartAborted()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    iput-object v3, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    goto :goto_a

    :cond_21
    iget-object v3, v14, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v8, 0x3f3

    invoke-virtual {v3, v8, v11, v14}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_1b

    invoke-virtual {v6, v3, v12}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_9

    :cond_22
    invoke-virtual {v6, v9, v3}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->requestSplit(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v6, v9, v10}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->requestSplit(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto/16 :goto_9

    :cond_24
    sget-object v3, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v8, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "DesktopTasksController: cancelDragToDesktop taskId=%d"

    invoke-static {v6, v3, v8}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    invoke-virtual {v14, v3}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->cancelDragToDesktopTransition(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V

    goto/16 :goto_9

    :goto_c
    iput-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    goto :goto_d

    :cond_25
    invoke-virtual {v6}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :cond_26
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_d

    :cond_27
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateHoverAndPressStatus(Landroid/view/MotionEvent;)V

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-eq v3, v10, :cond_28

    const/4 v6, 0x6

    if-ne v3, v6, :cond_29

    :cond_28
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInFocusedCaptionHandle(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_29

    iput-boolean v10, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    :cond_29
    :goto_d
    if-eqz v7, :cond_2c

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInCaption(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_e

    :cond_2a
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateHoverAndPressStatus(Landroid/view/MotionEvent;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v10, :cond_2b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2c

    :cond_2b
    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-nez v3, :cond_2c

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenuIfNeeded(Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenuIfNeeded(Landroid/view/MotionEvent;)V

    :cond_2c
    :goto_e
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v5}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_2d
    move v3, v10

    :cond_2e
    invoke-virtual {v0, v1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventReceiver{tasksOnDisplay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
