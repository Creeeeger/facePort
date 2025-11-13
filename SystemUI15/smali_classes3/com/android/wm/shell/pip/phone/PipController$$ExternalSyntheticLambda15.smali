.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    goto/16 :goto_2a

    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-boolean v3, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    const-string v4, "PipTouchHandler"

    if-nez v3, :cond_1

    const-string v0, "pip input event not allowed"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_1
    check-cast v0, Landroid/view/MotionEvent;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/4 v6, 0x1

    const/4 v8, 0x3

    if-eqz v3, :cond_13

    iget-object v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    iget-object v11, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-object v12, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    if-nez v10, :cond_9

    iget v10, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    if-nez v10, :cond_2

    move v10, v6

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    const-string v13, "PipNaturalSwitchingHandler"

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startNaturalSwitchingIfPossible: failed, already running, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    iget-object v10, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v14, v10, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v10, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v14, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v10, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v10}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v10

    iget-boolean v5, v11, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    xor-int/2addr v5, v6

    iget-boolean v11, v11, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iget-object v7, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v12, v7}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v7

    if-nez v10, :cond_7

    if-nez v5, :cond_7

    if-nez v11, :cond_7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    iget v5, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12, v0, v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    iput-object v14, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    iput-object v15, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startNaturalSwitchingIfPossible: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v6}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    goto/16 :goto_6

    :cond_7
    :goto_1
    const-string/jumbo v9, "startNaturalSwitchingIfPossible: failed, st="

    const-string v12, ", tb="

    const-string v14, ", wd="

    invoke-static {v9, v12, v14, v10, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", ib="

    invoke-static {v5, v11, v9, v7, v13}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startNaturalSwitchingIfPossible: failed, leash="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    iget v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    iget-object v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_b

    iget-object v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz v5, :cond_c

    :cond_b
    iget-boolean v5, v11, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    if-eqz v5, :cond_c

    invoke-virtual {v9}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->clearAllAnimations()V

    :cond_c
    iget v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    invoke-virtual {v12, v0, v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v5

    if-ne v10, v6, :cond_d

    iget-boolean v7, v12, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    if-eqz v7, :cond_d

    move v7, v6

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    :goto_3
    if-eq v10, v8, :cond_f

    if-ne v10, v6, :cond_e

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    :cond_f
    :goto_4
    move v10, v6

    :goto_5
    if-eqz v7, :cond_10

    const-string v5, "dropped"

    invoke-virtual {v9, v5, v6}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->updateWaitingForTaskVanished(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_10
    if-eqz v10, :cond_11

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    goto :goto_6

    :cond_11
    if-eqz v5, :cond_13

    iget v5, v9, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v9, v7}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    :cond_13
    :goto_6
    iget-object v5, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v7

    const/4 v9, 0x5

    if-nez v7, :cond_16

    iget-object v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-boolean v10, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    if-eqz v10, :cond_15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v7, v10, v11}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v7

    if-eqz v7, :cond_15

    move v10, v6

    goto :goto_7

    :cond_14
    if-ne v10, v9, :cond_15

    iget-boolean v10, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v10, :cond_15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_15

    invoke-virtual {v7, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    iget-boolean v10, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean v10, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_16

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v0, :cond_67

    iget v0, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    invoke-virtual {v5, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->updateMinMaxSize(F)V

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v2, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    goto/16 :goto_2a

    :cond_16
    iget-object v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget v10, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    if-nez v10, :cond_18

    iget-boolean v7, v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    if-eqz v7, :cond_17

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    goto :goto_9

    :cond_18
    :goto_8
    move v7, v6

    :goto_9
    iget-object v10, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    iget-object v11, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    if-eqz v7, :cond_1a

    iget-object v0, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v12, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    const-string v0, "block touch event for resize gesture"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_1a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_1b

    iget-boolean v7, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v7, :cond_1c

    :cond_1b
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    iget-boolean v7, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    iget-object v13, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-nez v7, :cond_1e

    iget-object v7, v13, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v7, v7, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_1d

    move v7, v6

    goto :goto_a

    :cond_1d
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_1e

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_67

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x0

    const-string v9, "%s: Waiting to start the entry animation, skip the motion event."

    const-wide v6, 0x70695dafe72234cfL    # 3.150489606382395E233

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_1e
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    if-eqz v7, :cond_1f

    move v7, v6

    goto :goto_b

    :cond_1f
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v14, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    if-eqz v9, :cond_5f

    if-eq v9, v6, :cond_34

    const/4 v15, 0x2

    if-eq v9, v15, :cond_27

    if-eq v9, v8, :cond_26

    const/4 v3, 0x7

    if-eq v9, v3, :cond_25

    const/16 v3, 0x9

    if-eq v9, v3, :cond_23

    const/16 v3, 0xa

    if-eq v9, v3, :cond_21

    :cond_20
    :goto_c
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move/from16 v17, v7

    move-object/from16 v18, v14

    goto/16 :goto_27

    :cond_21
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->scheduleHoverExitTimeoutCallback()V

    :cond_22
    if-nez v7, :cond_20

    iget-boolean v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v3, :cond_20

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_c

    :cond_23
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->getLastResizeBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->getLastResizeBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_d

    :cond_24
    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    iget-object v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v4

    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v9

    invoke-virtual {v14, v3, v4, v9}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuWithPossibleDelay(Landroid/graphics/Rect;ZZ)V

    :cond_25
    :goto_d
    if-nez v7, :cond_20

    iget-boolean v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_20

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    iput-boolean v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_c

    :cond_26
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v18, v14

    goto/16 :goto_24

    :cond_27
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v1, :cond_29

    :cond_28
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_29
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    iget-object v4, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    if-eqz v1, :cond_2d

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_2b

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iget v1, v1, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2a

    move v1, v6

    goto :goto_e

    :cond_2a
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_2b

    goto :goto_f

    :cond_2b
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DismissViewManager;->createDismissView()V

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DismissViewManager;->createOrUpdateWrapper()V

    :cond_2c
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DismissViewManager;->show()V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/DismissViewManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    :cond_2d
    :goto_f
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    if-eqz v1, :cond_28

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-boolean v6, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserMovedPip:Z

    iget-boolean v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz v3, :cond_2e

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestoreBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2e
    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v3, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v11

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v12, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v12

    iget v13, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    sub-float v9, v13, v9

    add-float/2addr v9, v11

    iput v9, v10, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v3

    add-float/2addr v3, v12

    iput v3, v10, Landroid/graphics/PointF;->y:F

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v9, v13

    float-to-int v1, v1

    invoke-virtual {v3, v9, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v6}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v9, v3, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v9, :cond_2f

    move v9, v6

    goto :goto_10

    :cond_2f
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_30

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/DismissViewManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    :cond_30
    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget-boolean v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    if-eqz v3, :cond_32

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_31

    move v1, v6

    goto :goto_11

    :cond_31
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    :cond_32
    move v1, v6

    :goto_12
    if-eqz v1, :cond_33

    goto/16 :goto_c

    :cond_33
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    xor-int/lit8 v7, v1, 0x1

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v18, v14

    goto/16 :goto_28

    :cond_34
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    iget-object v1, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    iget-object v13, v9, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v13, v13, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v13, :cond_35

    move v15, v6

    goto :goto_13

    :cond_35
    const/4 v15, 0x0

    :goto_13
    if-eqz v15, :cond_36

    iget-boolean v13, v13, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz v13, :cond_36

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->dismissPip()V

    invoke-virtual {v9}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move/from16 v17, v7

    move-object/from16 v18, v14

    move v7, v6

    goto/16 :goto_23

    :cond_36
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    iget-boolean v9, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v9, :cond_37

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move/from16 v17, v7

    move-object/from16 v18, v14

    const/4 v7, 0x0

    goto/16 :goto_23

    :cond_37
    iget-object v9, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-boolean v13, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    iget-object v15, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-object v8, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v12, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    iget-object v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move/from16 v17, v7

    iget-object v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v13, :cond_50

    iget v13, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    if-eqz v13, :cond_38

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v18, v14

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v14

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v6

    move-object/from16 v19, v0

    const/4 v0, 0x0

    invoke-virtual {v8, v13, v14, v0, v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(Landroid/graphics/Rect;ZZZ)V

    goto :goto_14

    :cond_38
    move-object/from16 v19, v0

    move-object/from16 v18, v14

    :goto_14
    iget v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    if-nez v0, :cond_39

    const/4 v0, 0x1

    goto :goto_15

    :cond_39
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    if-eqz v3, :cond_3a

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    if-eqz v0, :cond_3a

    const-string v0, "onUp: skip to fling, reason=ns_pip_processing"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v5

    goto/16 :goto_22

    :cond_3a
    iget-boolean v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mStashVelocityThreshold:F

    neg-float v8, v6

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3b

    const/4 v8, 0x1

    goto :goto_16

    :cond_3b
    const/4 v8, 0x0

    :goto_16
    cmpl-float v3, v3, v6

    if-lez v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_17

    :cond_3c
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v13, 0x2

    div-int/2addr v6, v13

    iget v13, v0, Landroid/graphics/Rect;->left:I

    iget-object v14, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v6

    if-ge v13, v14, :cond_3d

    const/4 v13, 0x1

    goto :goto_18

    :cond_3d
    const/4 v13, 0x0

    :goto_18
    iget v14, v0, Landroid/graphics/Rect;->right:I

    iget-object v15, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    move-object/from16 v20, v5

    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    if-le v14, v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_19

    :cond_3e
    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    iget-object v6, v6, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v6, :cond_42

    if-nez v8, :cond_3f

    if-eqz v13, :cond_40

    :cond_3f
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_40

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_1a

    :cond_40
    if-nez v3, :cond_41

    if-eqz v5, :cond_42

    :cond_41
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_42

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_42
    :goto_1a
    if-eqz v8, :cond_43

    iget v0, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_44

    :cond_43
    if-eqz v3, :cond_45

    iget v0, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_45

    :cond_44
    const/4 v0, 0x1

    goto :goto_1b

    :cond_45
    const/4 v0, 0x0

    :goto_1b
    if-nez v13, :cond_47

    if-eqz v5, :cond_46

    goto :goto_1c

    :cond_46
    const/4 v3, 0x0

    goto :goto_1d

    :cond_47
    :goto_1c
    const/4 v3, 0x1

    :goto_1d
    if-nez v0, :cond_4a

    if-eqz v3, :cond_4a

    iget v6, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    if-eqz v13, :cond_48

    const/4 v8, 0x1

    if-eq v6, v8, :cond_49

    :cond_48
    if-eqz v5, :cond_4a

    const/4 v5, 0x2

    if-ne v6, v5, :cond_4a

    :cond_49
    const-string v0, "Prevented PiP from being stashed to the opposite side. stashedState="

    invoke-static {v6, v0, v4}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_4a
    if-nez v0, :cond_4b

    if-eqz v3, :cond_4e

    :cond_4b
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    new-instance v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v10, v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget v6, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    if-nez v6, :cond_4c

    const/4 v3, 0x1

    const/4 v15, 0x0

    goto :goto_1e

    :cond_4c
    move v15, v3

    const/4 v3, 0x1

    :goto_1e
    invoke-virtual {v0, v1, v15, v5, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget$1(FFLjava/lang/Runnable;Z)V

    goto/16 :goto_22

    :cond_4d
    move-object/from16 v20, v5

    :cond_4e
    :goto_1f
    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    :cond_4f
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    new-instance v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v5, v10, v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget$1(FFLjava/lang/Runnable;Z)V

    goto/16 :goto_22

    :cond_50
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v18, v14

    iget-boolean v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDoubleTap:Z

    if-eqz v0, :cond_58

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v0, :cond_56

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ge v0, v3, :cond_51

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :cond_51
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    goto :goto_20

    :cond_52
    const/4 v0, 0x1

    :goto_20
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-static {v7, v3}, Lcom/android/wm/shell/common/pip/PipDoubleTapHelper;->nextSizeSpec(Lcom/android/wm/shell/common/pip/PipBoundsState;Landroid/graphics/Rect;)I

    move-result v3

    if-ne v3, v0, :cond_54

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-boolean v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v6, :cond_53

    iget v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_21

    :cond_53
    const/4 v6, 0x0

    :goto_21
    iget-object v8, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v0, v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v5, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v6, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v8, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7, v6}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v6

    invoke-static {v3, v0, v6}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V

    iput v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto/16 :goto_22

    :cond_54
    if-nez v3, :cond_55

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToNormalSize(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    goto :goto_22

    :cond_55
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnexpandedState(Landroid/graphics/Rect;)V

    goto :goto_22

    :cond_56
    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v3, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v3, :cond_57

    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_57
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v1, v0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip$1(ZZ)V

    goto :goto_22

    :cond_58
    iget v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5b

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v0

    iget-object v3, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-eqz v0, :cond_59

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnStashedState()V

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    iput-boolean v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iget-object v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_22

    :cond_59
    iget-boolean v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-nez v0, :cond_5a

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v1

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v8, v0, v1, v5, v3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(Landroid/graphics/Rect;ZZZ)V

    goto :goto_22

    :cond_5a
    if-eqz v0, :cond_5b

    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    move-result-wide v0

    iget-object v5, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_5b
    :goto_22
    iget-object v0, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_5c
    const/4 v7, 0x1

    :goto_23
    if-eqz v7, :cond_5d

    goto/16 :goto_27

    :cond_5d
    :goto_24
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    if-nez v0, :cond_5e

    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v0, :cond_5e

    const/4 v7, 0x1

    goto :goto_25

    :cond_5e
    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    const-string v0, "ACTION_CANCEL"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    goto :goto_28

    :cond_5f
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move/from16 v17, v7

    move-object/from16 v18, v14

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_60

    goto :goto_27

    :cond_60
    iget-object v0, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz v1, :cond_61

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v10, v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    const-string v4, "DefaultPipTouchGesture#onDown"

    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object v1

    iput-object v1, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_61
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v4, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_62

    const/4 v7, 0x1

    goto :goto_26

    :cond_62
    const/4 v7, 0x0

    :goto_26
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    if-eqz v1, :cond_63

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->pokeMenu()V

    :cond_63
    :goto_27
    move/from16 v7, v17

    :goto_28
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    and-int/2addr v0, v7

    if-eqz v0, :cond_67

    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    if-eqz v1, :cond_64

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->pokeMenu()V

    :cond_64
    move-object/from16 v1, v18

    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez v2, :cond_65

    goto :goto_29

    :cond_65
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_29

    :cond_66
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_29
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_67
    :goto_2a
    return-void
.end method
