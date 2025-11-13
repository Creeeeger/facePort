.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    iget-boolean v3, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    if-nez v3, :cond_1

    goto/16 :goto_1a

    :cond_1
    check-cast v0, Landroid/view/MotionEvent;

    iget-object v3, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    iget-boolean v7, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    iget-boolean v7, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean v7, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->reset()V

    goto/16 :goto_1a

    :cond_3
    iget-object v4, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-boolean v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    iget-object v7, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v0, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v8, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_4
    iget-object v0, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-boolean v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v1, :cond_5

    goto/16 :goto_1a

    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    goto/16 :goto_1a

    :cond_6
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget v4, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    const/4 v9, 0x1

    if-eqz v4, :cond_7

    move v4, v9

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-eqz v10, :cond_3c

    if-eq v10, v9, :cond_16

    if-eq v10, v6, :cond_d

    if-eq v10, v12, :cond_3a

    const/4 v6, 0x7

    if-eq v10, v6, :cond_c

    const/16 v6, 0x9

    iget-object v7, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-eq v10, v6, :cond_b

    const/16 v6, 0xa

    if-eq v10, v6, :cond_9

    :cond_8
    :goto_2
    move/from16 v19, v4

    goto/16 :goto_17

    :cond_9
    iget-object v6, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    check-cast v7, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v7, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    const-wide/16 v10, 0x32

    invoke-virtual {v7, v6, v10, v11}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_a
    if-nez v4, :cond_8

    iget-boolean v6, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    iput-boolean v5, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_2

    :cond_b
    iget-object v5, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    check-cast v7, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v7, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    iget-object v13, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZ)V

    :cond_c
    if-nez v4, :cond_8

    iget-boolean v5, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v5, :cond_8

    const/16 v5, 0x80

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    iput-boolean v9, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_2

    :cond_d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v6, :cond_e

    goto/16 :goto_5

    :cond_e
    iget-boolean v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    iget-object v10, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    if-eqz v6, :cond_f

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->showDismissTargetMaybe()V

    :cond_f
    iget-boolean v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    if-eqz v6, :cond_14

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-boolean v9, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserMovedPip:Z

    iget-boolean v13, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz v13, :cond_10

    iget-object v6, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestoreBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    :cond_10
    iget-object v6, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v13, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v14, v13, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget-object v7, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    iget v15, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v14, v15

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v12

    iget v5, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v14

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v13

    sub-float v14, v5, v14

    add-float/2addr v14, v15

    iput v14, v7, Landroid/graphics/PointF;->x:F

    sub-float v13, v6, v13

    add-float/2addr v13, v12

    iput v13, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v5, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    iget-boolean v7, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v12, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-nez v7, :cond_11

    invoke-virtual {v5}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    iget-object v5, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object v7, v12, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v7, v6}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->setBoundsInMotion(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6, v11}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleUserResizePip(Landroid/graphics/Rect;F)V

    goto :goto_3

    :cond_11
    iget-object v7, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v13, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-virtual {v12}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v7, v13, v14, v11, v15}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v13, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {v12}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7, v13, v12, v11, v15}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v12, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    invoke-virtual {v7, v12, v13, v11, v15}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v12, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget v13, v6, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v7, v12, v13, v11, v15}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V

    :goto_3
    iget-object v5, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget-boolean v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    if-eqz v6, :cond_13

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v6, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_12

    move v5, v9

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v10, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    :cond_13
    move v5, v9

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_15

    goto/16 :goto_2

    :cond_15
    iget-boolean v4, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    xor-int/2addr v4, v9

    goto/16 :goto_18

    :cond_16
    invoke-virtual {v1}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->updateMovementBounds()V

    iget-object v5, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object v10, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-boolean v11, v10, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v11, :cond_17

    goto :goto_6

    :cond_17
    iget-object v10, v10, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v10}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    :goto_6
    iget-object v10, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iput-object v8, v10, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-boolean v10, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v10, :cond_18

    move/from16 v19, v4

    const/4 v9, 0x0

    goto/16 :goto_14

    :cond_18
    iget-object v10, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-boolean v11, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iget-object v12, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    iget-object v13, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    iget-object v14, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v11, :cond_2b

    iget v11, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    if-eqz v11, :cond_19

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual {v5}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v19

    const/16 v20, 0x0

    const/16 v18, 0x1

    iget-object v15, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZ)V

    :cond_19
    iget v11, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    if-nez v11, :cond_1a

    move v11, v9

    goto :goto_7

    :cond_1a
    const/4 v11, 0x0

    :goto_7
    iput-boolean v11, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    invoke-virtual {v13}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->reset()V

    iget-boolean v11, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mEnableStash:Z

    if-eqz v11, :cond_28

    invoke-virtual {v5}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v15, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mStashVelocityThreshold:F

    neg-float v8, v15

    cmpg-float v8, v13, v8

    if-gez v8, :cond_1b

    move v8, v9

    goto :goto_8

    :cond_1b
    const/4 v8, 0x0

    :goto_8
    cmpl-float v13, v13, v15

    if-lez v13, :cond_1c

    move v13, v9

    goto :goto_9

    :cond_1c
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/2addr v15, v6

    iget v9, v11, Landroid/graphics/Rect;->left:I

    iget-object v6, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v15

    if-ge v9, v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_a

    :cond_1d
    const/4 v6, 0x0

    :goto_a
    iget v9, v11, Landroid/graphics/Rect;->right:I

    iget-object v11, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    move/from16 v19, v4

    invoke-virtual {v11}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v15

    if-le v9, v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_b

    :cond_1e
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v11}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v9

    iget-object v9, v9, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v9, :cond_22

    if-nez v8, :cond_1f

    if-eqz v6, :cond_20

    :cond_1f
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_20

    goto :goto_f

    :cond_20
    if-nez v13, :cond_21

    if-eqz v4, :cond_22

    :cond_21
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_22

    goto :goto_f

    :cond_22
    if-eqz v8, :cond_23

    iget v8, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_24

    :cond_23
    if-eqz v13, :cond_25

    iget v8, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_25

    :cond_24
    const/4 v8, 0x1

    goto :goto_c

    :cond_25
    const/4 v8, 0x0

    :goto_c
    if-nez v6, :cond_27

    if-eqz v4, :cond_26

    goto :goto_d

    :cond_26
    const/4 v4, 0x0

    goto :goto_e

    :cond_27
    :goto_d
    const/4 v4, 0x1

    :goto_e
    if-nez v8, :cond_38

    if-eqz v4, :cond_29

    goto/16 :goto_13

    :cond_28
    move/from16 v19, v4

    :cond_29
    :goto_f
    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v12, v4}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    :cond_2a
    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget v5, v10, Landroid/graphics/PointF;->x:F

    iget v6, v10, Landroid/graphics/PointF;->y:F

    new-instance v8, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->flingToSnapTarget(FFLjava/lang/Runnable;)V

    goto/16 :goto_13

    :cond_2b
    move/from16 v19, v4

    iget-boolean v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDoubleTap:Z

    if-eqz v4, :cond_34

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v4

    if-nez v4, :cond_34

    iget v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_33

    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-boolean v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v4, :cond_30

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v4, v6, :cond_2c

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    :cond_2c
    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9, v6, v6}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    goto :goto_10

    :cond_2d
    const/4 v9, 0x1

    :goto_10
    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-static {v14, v4}, Lcom/android/wm/shell/common/pip/PipDoubleTapHelper;->nextSizeSpec(Lcom/android/wm/shell/common/pip/PipBoundsState;Landroid/graphics/Rect;)I

    move-result v4

    if-ne v4, v9, :cond_2e

    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-object v9, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8, v4, v10}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v8, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object v9, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, v8, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v11}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v8, v8, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v8

    invoke-static {v6, v4, v8}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iput v8, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto/16 :goto_13

    :cond_2e
    if-nez v4, :cond_2f

    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToNormalSize(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    goto/16 :goto_13

    :cond_2f
    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToUnexpandedState(Landroid/graphics/Rect;)V

    goto/16 :goto_13

    :cond_30
    const/4 v4, 0x0

    iput-boolean v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v4, :cond_31

    invoke-virtual {v13}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->reset()V

    :cond_31
    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8, v5, v5}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    goto :goto_13

    :cond_32
    const/4 v8, 0x1

    goto :goto_13

    :cond_33
    move v8, v6

    goto :goto_11

    :cond_34
    const/4 v8, 0x1

    :goto_11
    iget v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    if-eq v4, v8, :cond_38

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v4

    iget-object v6, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-eqz v4, :cond_35

    invoke-virtual {v5}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToUnStashedState()V

    sget-object v4, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v12, v4}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    iput-boolean v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iget-object v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    check-cast v6, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_35
    iget-boolean v4, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-nez v4, :cond_36

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual {v5}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v24

    iget-object v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    const/16 v23, 0x1

    const/16 v21, 0x1

    const/16 v25, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v25}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZ)V

    goto :goto_13

    :cond_36
    if-eqz v4, :cond_38

    if-eqz v4, :cond_37

    sget-wide v4, Lcom/android/wm/shell/pip2/phone/PipTouchState;->DOUBLE_TAP_TIMEOUT:J

    iget-wide v8, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v10, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_12

    :cond_37
    const-wide/16 v4, -0x1

    :goto_12
    iget-object v8, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    check-cast v6, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, v13, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v8, v4, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_38
    :goto_13
    iget-object v4, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    const/4 v4, 0x0

    iput-object v4, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_39
    const/4 v9, 0x1

    :goto_14
    if-eqz v9, :cond_3a

    goto/16 :goto_17

    :cond_3a
    iget-boolean v4, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    if-nez v4, :cond_3b

    iget-boolean v4, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    if-nez v4, :cond_3b

    const/4 v5, 0x1

    goto :goto_15

    :cond_3b
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v2}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->reset()V

    move v4, v5

    goto :goto_18

    :cond_3c
    move/from16 v19, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v4, :cond_3d

    goto :goto_17

    :cond_3d
    iget-object v4, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object v5, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz v5, :cond_3e

    new-instance v6, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda4;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    const-string v8, "DefaultPipTouchGesture#onDown"

    invoke-virtual {v5, v6, v8}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object v5

    iput-object v5, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_3e
    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    invoke-virtual {v6, v11, v11}, Landroid/graphics/PointF;->set(FF)V

    iget-object v6, v7, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v5, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v7, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_3f

    const/4 v9, 0x1

    goto :goto_16

    :cond_3f
    const/4 v9, 0x0

    :goto_16
    iput-boolean v9, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    iget-object v5, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v5, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v5, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    iget-object v7, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iput-object v5, v7, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    iget v5, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    if-eqz v5, :cond_40

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v5, v4, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, v4, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_40
    :goto_17
    move/from16 v4, v19

    :goto_18
    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_44

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-boolean v2, v2, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    if-eqz v2, :cond_41

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v3, v2, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, v2, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_41
    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    if-nez v2, :cond_42

    goto :goto_19

    :cond_42
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_19

    :cond_43
    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_44
    :goto_1a
    return-void
.end method
