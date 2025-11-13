.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# static fields
.field public static final MAX_LONG_PRESS_TIMEOUT:I


# instance fields
.field public mAllowGesture:Z

.field public mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

.field public mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

.field public final mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

.field public final mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

.field public mBackSwipeLinearThreshold:F

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBottomGestureHeight:F

.field public mButtonForcedVisibleCallback:Ljava/util/function/Consumer;

.field public final mContext:Landroid/content/Context;

.field public mDeferSetIsOnLeftEdge:Z

.field public final mDesktopCornersChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

.field public final mDesktopModeExcludeRegion:Landroid/graphics/Region;

.field public final mDesktopModeOptional:Ljava/util/Optional;

.field public mDisabledByPolicy:Z

.field public mDisabledForQuickstep:Z

.field public final mDisplayId:I

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

.field public final mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

.field public mEdgeWidthLeft:I

.field public mEdgeWidthRight:I

.field public final mEndPoint:Landroid/graphics/PointF;

.field public final mExcludeRegion:Landroid/graphics/Region;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mGestureBlockingActivities:Ljava/util/List;

.field public final mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mGestureExclusionListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

.field public final mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public mInGestureNavMode:Z

.field public mInRejectedExclusion:Z

.field public final mInputDeviceListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;

.field public mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public mIsAttached:Z

.field public mIsBackGestureAllowed:Z

.field public mIsBlockGestureOnGame:Z

.field public mIsButtonForcedVisible:Z

.field public mIsEnabled:Z

.field public mIsGestureHandlingEnabled:Z

.field public mIsInPip:Z

.field public mIsLargeCoverBackGestureEnabled:Z

.field public mIsNavBarShownTransiently:Z

.field public mIsOnLeftEdge:Z

.field public mIsTrackpadThreeFingerSwipe:Z

.field public final mLastReportedConfig:Landroid/content/res/Configuration;

.field public mLeftInset:I

.field public final mLightBarControllerProvider:Ljavax/inject/Provider;

.field public final mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

.field public mLogGesture:Z

.field public final mLongPressTimeout:I

.field public mMLEnableWidth:I

.field public mMLModelIsLoading:Z

.field public mMLModelThreshold:F

.field public mMLResults:F

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public final mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

.field public final mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public mNonLinearFactor:F

.field public final mOnIsInPipStateChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public mPackageName:Ljava/lang/String;

.field public final mPipExcludedBounds:Landroid/graphics/Rect;

.field public final mPipOptional:Ljava/util/Optional;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

.field public mRightInset:I

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mStartingQuickstepRotation:I

.field public mStateChangeCallback:Ljava/lang/Runnable;

.field public mSysUiFlags:J

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

.field public final mTaskStackListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

.field public mThresholdCrossed:Z

.field public final mTmpLogDate:Ljava/util/Date;

.field public mTouchSlop:F

.field public final mTrackpadsConnected:Ljava/util/Set;

.field public final mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

.field public final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field public mUseMLModel:Z

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mUsingThreeButtonNav:Z

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewConfiguration:Landroid/view/ViewConfiguration;

.field public mVocab:Ljava/util/Map;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static $r8$lambda$BDwwaFS12IIc2CEG9o8I_AhrHGU(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    if-eqz v3, :cond_1

    iget-boolean v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->enabled:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->onInputEvent(Landroid/view/InputEvent;)V

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_19

    invoke-static {v1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v3, v3, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    invoke-virtual {v3, v7}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-eqz v3, :cond_3

    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDeferSetIsOnLeftEdge:Z

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    goto :goto_2

    :cond_3
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v8

    if-gt v3, v4, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v7

    :goto_0
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v7

    :goto_1
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    :goto_2
    iput v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinInsets(II)Z

    move-result v3

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    if-nez v4, :cond_9

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    if-nez v4, :cond_8

    :cond_7
    iget-wide v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    invoke-static {v8, v9, v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(JZ)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-static {v1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadScroll(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_9

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isMultiWindowCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    if-eqz v2, :cond_b

    iget-boolean v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    if-nez v6, :cond_a

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBlockSPenGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_4

    :cond_a
    move v6, v7

    :goto_4
    and-int/2addr v4, v6

    :cond_b
    iget-boolean v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-eqz v6, :cond_e

    iget-wide v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    const-wide v10, 0x200000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_5

    :cond_c
    move v6, v7

    :goto_5
    if-eqz v4, :cond_d

    if-eqz v6, :cond_d

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v8, v4, Landroid/graphics/Insets;->left:I

    iget v9, v4, Landroid/graphics/Insets;->top:I

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v4, Landroid/graphics/Insets;->right:I

    sub-int/2addr v11, v12

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v10, v4

    invoke-virtual {v6, v8, v9, v11, v10}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_6

    :cond_d
    move v4, v7

    :goto_6
    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    goto :goto_9

    :cond_e
    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    if-nez v4, :cond_10

    :cond_f
    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUsingThreeButtonNav:Z

    if-nez v4, :cond_12

    :cond_10
    if-eqz v3, :cond_12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const v6, 0x10200a

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_7

    :cond_11
    move v4, v5

    goto :goto_8

    :cond_12
    :goto_7
    move v4, v7

    :goto_8
    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    :goto_9
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v4, :cond_13

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBlockingGestureOnGame()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    iget-boolean v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    xor-int/2addr v5, v6

    and-int/2addr v4, v5

    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    :cond_13
    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v4, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dispatchToBackAnimation(Landroid/view/MotionEvent;)V

    :cond_14
    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v4, :cond_15

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-eqz v4, :cond_16

    :cond_15
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v4, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    invoke-virtual {v1, v6}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    goto :goto_a

    :cond_17
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    :goto_a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz v2, :cond_18

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    :cond_18
    move-object v7, v1

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDeferSetIsOnLeftEdge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-wide v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    invoke-static {v1, v2, v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(JZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsInPip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v22, v0

    filled-new-array/range {v6 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gesture [%d [%s],alw=%B, t3fs=%B, left=%B, defLeft=%B, backAlw=%B, disbld=%B, qsDisbld=%b, blkdAct=%B, pip=%B, disp=%s, wl=%d, il=%d, wr=%d, ir=%d, excl=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_19
    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v8, :cond_1b

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v8, :cond_1a

    goto :goto_b

    :cond_1a
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2a

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2a

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v5}, Lcom/android/systemui/util/SettingsHelper;->setGameToolsEnabled(Z)V

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    goto/16 :goto_f

    :cond_1b
    :goto_b
    const/4 v8, 0x5

    const-string v9, "onMotionEvent("

    const-string v10, "EdgeBackGestureHandler"

    if-eqz v3, :cond_1c

    if-ne v2, v8, :cond_1c

    iget-boolean v3, v4, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    if-eqz v3, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") cancel reason [splitGesture]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    :cond_1c
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") cancel reason [palmTouch]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    :cond_1d
    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v4, :cond_29

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/PointF;->y:F

    if-ne v2, v8, :cond_20

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-nez v4, :cond_20

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    if-eqz v3, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") cancel reason [multitouch]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    :cond_1f
    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    goto/16 :goto_f

    :cond_20
    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-eqz v2, :cond_22

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDeferSetIsOnLeftEdge:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_21

    move v2, v5

    goto :goto_c

    :cond_21
    move v2, v7

    :goto_c
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDeferSetIsOnLeftEdge:Z

    :cond_22
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v13, v2

    cmp-long v2, v11, v13

    if-lez v2, :cond_24

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    if-eqz v3, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") cancel reason [longpress]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    goto/16 :goto_f

    :cond_24
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v6, v4, v2

    if-lez v6, :cond_26

    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_26

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_25

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    if-eqz v3, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") cancel reason [vertical move]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    goto :goto_f

    :cond_26
    cmpl-float v3, v2, v4

    if-lez v3, :cond_29

    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v2}, Lcom/android/wm/shell/back/BackAnimationController;->onThresholdCrossed()V

    goto :goto_d

    :cond_27
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->pilferPointers()V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v2, v2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    invoke-virtual {v2, v5}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    :goto_d
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto :goto_e

    :cond_28
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    :cond_29
    :goto_e
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dispatchToBackAnimation(Landroid/view/MotionEvent;)V

    :cond_2a
    :goto_f
    return-void
.end method

.method public static -$$Nest$msendEvent(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v8, 0x4

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x78b

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3a5

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3a4

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v13, 0x48

    const/16 v14, 0x101

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v2, v1

    move-wide v3, v5

    move/from16 v7, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1, v15}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    sput v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/concurrency/UiThreadContext;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;Landroid/view/ViewConfiguration;Landroid/view/WindowManager;Landroid/view/IWindowManager;Landroid/hardware/input/InputManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/FalsingManager;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 8
    .param p5    # Lcom/android/systemui/util/concurrency/UiThreadContext;
        .annotation runtime Lcom/android/systemui/util/concurrency/BackPanelUiThread;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/util/concurrency/UiThreadContext;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;",
            "Landroid/view/ViewConfiguration;",
            "Landroid/view/WindowManager;",
            "Landroid/view/IWindowManager;",
            "Landroid/hardware/input/InputManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopMode;",
            ">;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    const-string v2, "EdgeBackGestureHandler"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeExcludeRegion:Landroid/graphics/Region;

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTrackpadsConnected:Ljava/util/Set;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>(I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-direct {v5, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>(I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-direct {v5, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>(I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnIsInPipStateChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopCornersChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$7;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputDeviceListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    move-object v5, p5

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    move-object v5, p6

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v5, p8

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v5, p2

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object v5, p3

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v5, p4

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object/from16 v5, p9

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    move-object/from16 v5, p11

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    move-object/from16 v5, p12

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v5, p14

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    move-object/from16 v5, p15

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v5, p16

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeOptional:Ljava/util/Optional;

    move-object/from16 v5, p17

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v5, p18

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

    move-object/from16 v5, p19

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLightBarControllerProvider:Ljavax/inject/Provider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const v3, 0x104039f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x2600

    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "back_gesture_blocking_activities"

    const-string v6, "array"

    invoke-virtual {v0, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "No resource found for gesture-blocking activities"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    const-string v3, "Failed to add gesture blocking activities"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    iget-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;-><init>(Landroid/content/Context;ILcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    :cond_3
    sget v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    move-object v5, p7

    invoke-direct {v0, v2, p7, v3, v4}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method


# virtual methods
.method public final cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dispatchToBackAnimation(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f070ae6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v1, 0x7f070ae4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v5, 0x118

    const/4 v6, -0x3

    const/16 v4, 0x7e8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f130cdc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x200010

    or-int/2addr v1, v2

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EdgeBackGestureHandler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    return-object v7
.end method

.method public final dispatchToBackAnimation(Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    move v6, v0

    move v7, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    move v6, v0

    move v7, v6

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v9, p0, 0x1

    iget-object p0, v3, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "EdgeBackGestureHandler:"

    const-string v1, "  mIsEnabled="

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "  mIsAttached="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    const-string v2, "  mIsBackGestureAllowed="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    const-string v2, "  mIsGestureHandlingEnabled="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGestureHandlingEnabled:Z

    const-string v2, "  mIsNavBarShownTransiently="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    const-string v2, "  mGestureBlockingActivityRunning="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mAllowGesture="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    const-string v2, "  mUseMLModel="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    const-string v2, "  mDisabledForQuickstep="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    const-string v2, "  mStartingQuickstepRotation="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const-string v2, "  mInRejectedExclusion="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    const-string v2, "  mExcludeRegion="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mIsInPip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsInPip:Z

    const-string v2, "  mPipExcludedBounds="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDesktopModeExclusionRegion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mNavBarOverlayExcludedBounds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mEdgeWidthLeft="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    const-string v2, "  mEdgeWidthRight="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    const-string v2, "  mLeftInset="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    const-string v2, "  mRightInset="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    const-string v2, "  mMLEnableWidth="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    const-string v2, "  mMLModelThreshold="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    const-string v2, "  mTouchSlop="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    const-string v2, "  mBottomGestureHeight="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    const-string v2, "  mPredictionLog="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    const-string v2, "\n"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mGestureLogInsideInsets="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mGestureLogOutsideInsets="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mTrackpadsConnected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTrackpadsConnected:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mUsingThreeButtonNav="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUsingThreeButtonNav:Z

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDisabledByPolicy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mIsLargeCoverBackGestureEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mEdgeBackPlugin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EdgeBackSplitGestureHandler :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->enabled:Z

    const-string v1, "  enabled="

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  tmpBounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  displayController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  splitScreenController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final isBackGestureAllowed(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinInsets(II)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    invoke-static {v0, v1, v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isMultiWindowCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBlockSPenGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    move v2, v3

    :cond_1
    and-int/2addr v0, v2

    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBlockingGestureOnGame()Z

    move-result p0

    xor-int/2addr p0, v3

    and-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public final isBlockSPenGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x6

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    move p1, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isBlockGesturesWithSpenEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final isBlockingGestureOnGame()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowFloatingGameTools(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isBlockingGestureOnGame"

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    xor-int/lit8 v0, p0, 0x1

    :cond_2
    return v0
.end method

.method public final isHandlingGestures()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGestureHandlingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isMultiWindowCornerGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWithinInsets(II)Z
    .locals 3

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr v1, v2

    cmpl-float p2, p2, v1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    return v1

    :cond_0
    iget p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_1

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isWithinTouchRegion(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsInPip:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-nez v3, :cond_b

    if-nez v6, :cond_b

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    const/4 v6, -0x1

    if-eqz v3, :cond_2

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    iget v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v7, v8

    if-lt v1, v7, :cond_4

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sub-int/2addr v7, v9

    iget v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v7, v9

    if-lt v1, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v7, :cond_7

    iget v10, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    add-int/2addr v8, v10

    if-lt v1, v8, :cond_7

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v10

    iget v10, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v8, v10

    if-lt v1, v8, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    if-eqz v8, :cond_7

    if-ne v3, v6, :cond_6

    goto :goto_4

    :cond_6
    iput v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Prediction [%d,%d,%d,%d,%f,%d]"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->log(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    if-eqz v3, :cond_8

    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v7

    :cond_8
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v7, :cond_9

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iput v9, v1, Landroid/graphics/PointF;->x:F

    iput v9, v1, Landroid/graphics/PointF;->y:F

    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    :cond_9
    return v4

    :cond_a
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v7

    :cond_b
    :goto_5
    return v4
.end method

.method public final logGesture(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v2

    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget v12, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget-boolean v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    goto :goto_2

    :cond_3
    const/high16 v11, -0x40000000    # -2.0f

    :goto_2
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsTrackpadThreeFingerSwipe:Z

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 v6, 0xe0

    invoke-virtual {p0, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v11}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    if-le v3, v2, :cond_0

    if-eq v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Config changed: newConfig="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lastReportedConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NoBackGesture"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_6

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Force update display size as windowConfiguration: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EdgeBackGestureHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_7
    return-void
.end method

.method public final onNavBarAttached()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v2, v0}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputDeviceListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->onNavBarAttached()V

    :cond_2
    return-void
.end method

.method public final onNavBarDetached()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v0, v0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputDeviceListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$8;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTrackpadsConnected:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->onNavBarDetached()V

    :cond_0
    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 4

    const-string v0, "EdgeBackGestureHandler#onNavigationModeChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUsingThreeButtonNav:Z

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInGestureNavMode:Z

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInGestureNavMode:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->resetEdgeBackPlugin()V

    return-void
.end method

.method public final resetEdgeBackPlugin()V
    .locals 12

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->uiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/UiThreadContext;->isCurrentThread()V

    new-instance v10, Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->windowManager:Landroid/view/WindowManager;

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v0, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p0, v10}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public final setBackAnimation(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBackAnimation for displayId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iget-object v1, p1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object v1, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    :cond_0
    return-void
.end method

.method public final setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "setEdgeBackPlugin"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateBackAnimationThresholds()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackSwipeLinearThreshold:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNonLinearFactor:F

    iget-object v3, v2, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v1, v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFF)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateCurrentUserResources()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v6}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mButtonForcedVisibleCallback:Ljava/util/function/Consumer;

    if-eqz v5, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const v6, 0x10502c7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget v7, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    const-string/jumbo v7, "systemui"

    const-string v8, "back_gesture_bottom_height"

    invoke-static {v7, v8, v6}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    sget-boolean v8, Lcom/android/systemui/BasicRune;->NAVBAR_BOTTOM_GESTURE_SENSITIVITY:Z

    if-eqz v8, :cond_2

    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    goto :goto_1

    :cond_2
    invoke-static {v4, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    :goto_1
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v4, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    if-le v5, v6, :cond_3

    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    :cond_3
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    if-le v5, v6, :cond_4

    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    :cond_4
    const-string v5, "back_gesture_slop_multiplier"

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-static {v7, v5, v6}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    const v5, 0x10502d0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackSwipeLinearThreshold:F

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v6, 0x1050067

    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNonLinearFactor:F

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070618

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "back_gesture_inset_scale_left"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    invoke-static {v2, v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "back_gesture_inset_scale_right"

    invoke-static {v2, v5, v7, v8}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    :cond_5
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v1, p0, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_7
    return-void
.end method

.method public final updateDisplaySize()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    return-void
.end method

.method public final updateIsEnabled()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;->runWithScissors(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateMLModelState()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGestureHandlingEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f05004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "systemui"

    const-string/jumbo v3, "use_back_gesture_ml_model"

    invoke-static {v0, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;->isCurrentThread()V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    if-eqz v0, :cond_2

    const-string p0, "EdgeBackGestureHandler"

    const-string v0, "Model tried to load while already loading."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    :cond_4
    :goto_0
    return-void
.end method
