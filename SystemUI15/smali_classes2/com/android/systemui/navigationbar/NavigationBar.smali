.class public final Lcom/android/systemui/navigationbar/NavigationBar;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAppearance:I

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAutoDim:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

.field public mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public final mAutoHideControllerFactory:Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

.field public final mAutoHideUiElement:Lcom/android/systemui/navigationbar/NavigationBar$1;

.field public final mBackAnimation:Ljava/util/Optional;

.field public mBehavior:I

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDownEvent:Landroid/view/MotionEvent;

.field public mCurrentRotation:I

.field public final mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

.field public final mDepthListener:Lcom/android/systemui/navigationbar/NavigationBar$6;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabledFlags1:I

.field public mDisabledFlags2:I

.field public mDisplayId:I

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final mEnableLayoutTransitions:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

.field public mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

.field public final mHandler:Landroid/os/Handler;

.field public mHomeBlockedThisTouch:Z

.field public mHomeButtonLongPressDurationMs:Ljava/util/Optional;

.field public mHomeButtonLongPressHapticEnabled:Z

.field public mImeVisible:Z

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mInsetsSourceOwner:Landroid/os/Binder;

.field public mIsOnDefaultDisplay:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/navigationbar/NavigationBar$9;

.field public mLastLockToAppLongPress:J

.field public mLayoutDirection:I

.field public mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLightBarControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

.field public mLocale:Ljava/util/Locale;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mLongPressHomeEnabled:Z

.field public final mMainAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public final mMainLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$12;

.field public final mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

.field public final mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public mNavBarMode:I

.field public mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNavColorSampleMargin:I

.field public final mNavbarOrientationTrackingLogger:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

.field public final mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/NavigationBar$2;

.field public final mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

.field public mNavigationBarWindowState:I

.field public mNavigationIconHints:I

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mOnComputeInternalInsetsListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$5;

.field public final mOnVariableDurationHomeLongClick:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

.field public final mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

.field public mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

.field public mOrientationHandleGlobalLayoutListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

.field public final mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBar$4;

.field public mOrientationParams:Landroid/view/WindowManager$LayoutParams;

.field public mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

.field public mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

.field public mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

.field public final mOverviewProxyListener:Lcom/android/systemui/navigationbar/NavigationBar$3;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPipOptional:Ljava/util/Optional;

.field public final mRecentsOptional:Ljava/util/Optional;

.field public final mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field public final mSamplingBounds:Landroid/graphics/Rect;

.field public final mSavedState:Landroid/os/Bundle;

.field public mScreenPinningActive:Z

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public mShowOrientedHandleForImmersiveMode:Z

.field public mStartingQuickSwitchRotation:I

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field public final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

.field public final mTaskStackListener:Lcom/android/systemui/navigationbar/NavigationBar$8;

.field public final mTelecomManagerOptional:Ljava/util/Optional;

.field public final mTouchHandler:Lcom/android/systemui/navigationbar/NavigationBar$13;

.field public mTransientShown:Z

.field public mTransientShownFromGestureOnSystemBar:Z

.field public mTransitionMode:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/navigationbar/NavigationBar$7;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$l0AcVbdkOILVdcYnB8eAS8OBtSY(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->needTouchableInsetsFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mImeVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->getButtonLocations(ZZ)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :goto_0
    return-void
.end method

.method public static $r8$lambda$w-ga8QWBlGQNgzzuKsJs_6mEsNE(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public static $r8$lambda$zY6mSQB2R28kIk6-vWzi6hNheNA(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressHapticEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public static -$$Nest$mcalculateSamplingRect(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/graphics/Rect;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavColorSampleMargin:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_7

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ee2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v6, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v6, v6, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    aget v7, v1, v3

    const/4 v8, 0x1

    aget v1, v1, v8

    iget-object v9, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v6, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, v7, v2

    iget v3, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v3, v5

    add-int/2addr v7, v10

    add-int/2addr v7, v2

    invoke-direct {v0, v1, v4, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_1
    if-ne v9, v8, :cond_2

    iget v3, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v3, v5

    sub-int v5, v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v9, v6, :cond_3

    sub-int v4, v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    move v0, v5

    move v5, v4

    goto :goto_1

    :cond_3
    iget v1, v4, Landroid/graphics/Point;->y:I

    sub-int v5, v1, v5

    sub-int v3, v7, v2

    add-int/2addr v7, v10

    add-int v0, v7, v2

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_7

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/Rect;

    aget v6, v1, v3

    sub-int/2addr v6, v2

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v8, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v9, v8, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10502cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10502c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_3
    sub-int/2addr v7, v8

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget v1, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/NavigationBarView;",
            "Lcom/android/systemui/navigationbar/NavigationBarFrame;",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/navigationbar/NavBarHelper;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/LightBarController$Factory;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;",
            "Ljava/util/Optional<",
            "Landroid/telecom/TelecomManager;",
            ">;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/android/systemui/navigationbar/buttons/DeadZone;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/navigationbar/NavigationBarTransitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;",
            ">;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;",
            "Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p11

    move-object/from16 v3, p27

    move-object/from16 v4, p29

    move-object/from16 v5, p43

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    iput v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressHapticEnabled:Z

    iput v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v8, -0x1

    iput v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/NavigationBar$1;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/NavigationBar$2;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/navigationbar/NavigationBar$3;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBar$4;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$5;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/navigationbar/NavigationBar$6;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessObserver:Lcom/android/systemui/navigationbar/NavigationBar$7;

    iput-boolean v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/NavigationBar$8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackListener:Lcom/android/systemui/navigationbar/NavigationBar$8;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/NavigationBar$9;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateControllerCallback:Lcom/android/systemui/navigationbar/NavigationBar$9;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/NavigationBar$11;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/NavigationBar$12;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$12;

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$13;

    invoke-direct {v8, p0}, Lcom/android/systemui/navigationbar/NavigationBar$13;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTouchHandler:Lcom/android/systemui/navigationbar/NavigationBar$13;

    move-object v8, p2

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    move-object v8, p3

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v8, p19

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v8, p21

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object/from16 v8, p22

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object/from16 v8, p23

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v8, p16

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v8, p17

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v8, p36

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    move-object/from16 v8, p37

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    move-object/from16 v8, p38

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    sget-boolean v8, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v8, :cond_0

    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    if-ne v8, v7, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBackAnimation:Ljava/util/Optional;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BackAnimation not used for displayId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NavigationBar"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v7, p25

    goto :goto_1

    :cond_0
    move-object/from16 v7, p39

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBackAnimation:Ljava/util/Optional;

    goto :goto_0

    :goto_1
    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    move-object/from16 v7, p28

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    move-object/from16 v7, p24

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v7, p30

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMainLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v7, p31

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    move-object/from16 v7, p32

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMainAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object/from16 v7, p33

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideControllerFactory:Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    move-object/from16 v7, p34

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTelecomManagerOptional:Ljava/util/Optional;

    move-object/from16 v7, p35

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v7, p40

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    move-object/from16 v7, p41

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v7, p42

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v7, :cond_1

    invoke-virtual {v4, p4}, Lcom/android/systemui/navigationbar/NavBarHelper;->getEdgeBackGestureHandler(Landroid/content/Context;)Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    :goto_2
    move-object/from16 v4, p44

    goto :goto_3

    :cond_1
    iget-object v8, v4, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/android/systemui/navigationbar/NavBarHelper;->getEdgeBackGestureHandler(Landroid/content/Context;)Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    goto :goto_2

    :goto_3
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    move-object/from16 v4, p45

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOrientationTrackingLogger:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f070afe

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavColorSampleMargin:I

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnComputeInternalInsetsListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

    new-instance v4, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object v8, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/navigationbar/NavigationBar$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/navigationbar/NavigationBar$10;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    move-object/from16 v10, p26

    invoke-direct {v4, v8, v9, v10, v3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;->getInstance()Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    move-result-object v7

    iput-object v7, v4, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object v3, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iput-object v3, v7, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object v3, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object v5, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    :cond_3
    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static updateButtonLocation(Landroid/graphics/Region;Landroid/view/View;Z)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public static updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    if-eqz p4, :cond_1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void

    :cond_1
    invoke-static {p0, v0, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Landroid/view/View;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final abortTransient(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShownFromGestureOnSystemBar:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_2
    return-void
.end method

.method public final checkNavBarModes()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public final destroyView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const-string v1, "NavigationBar#destroyView"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-string v2, "NavigationBar#removeViewImmediate"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$12;

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/NavigationBar$2;

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/NavBarHelper;->removeNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/navigationbar/NavigationBar$6;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$5;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackListener:Lcom/android/systemui/navigationbar/NavigationBar$8;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/LightBarController;->mModeChangedListener:Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarDetached()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateControllerCallback:Lcom/android/systemui/navigationbar/NavigationBar$9;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final disable(IIIZ)V
    .locals 0

    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;-><init>(II)V

    iget-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p4, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_1
    const/high16 p1, 0x3600000

    and-int/2addr p1, p2

    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    if-eq p1, p4, :cond_2

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(ILcom/android/systemui/model/SysUiState;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iput p2, p1, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_4

    and-int/lit8 p1, p3, 0x10

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    if-eq p1, p2, :cond_4

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    sget-boolean p1, Lcom/android/systemui/shared/rotation/RotationButtonController;->OEM_DISALLOW_ROTATION_IN_SUW:Z

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_0
    return-void
.end method

.method public final disableAnimationsDuringHide(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    const-wide/16 v0, 0x1c0

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavigationBar (displayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mStartingQuickSwitchRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const-string v2, "  mCurrentRotation="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    const-string v2, "  mHomeButtonLongPressDurationMs="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mOverrideHomeButtonLongPressDurationMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mOverrideHomeButtonLongPressSlopMultiplier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mLongPressHomeEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    const-string v2, "  mNavigationBarWindowState="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mTransitionMode="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mTransientShown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    const-string v2, "  mTransientShownFromGestureOnSystemBar="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShownFromGestureOnSystemBar:Z

    const-string v2, "  mScreenPinningActive="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    const-string v0, "mNavigationBarView"

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mOrientedHandleSamplingRegion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string v3, "NavigationBarView:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "      this: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v7, 0x1

    if-gt v3, v6, :cond_1

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v7

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "      window: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string v1, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-static {v3, v1, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v1, "(unknown)"

    goto :goto_3

    :cond_3
    const-string v1, "(null)"

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "      mCurrentView: id=%s (%dx%d) %s %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "true"

    goto :goto_4

    :cond_4
    const-string v2, "false"

    :goto_4
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mScreenOn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "back"

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    const-string v1, "home"

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    const-string v1, "handle"

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    const-string v1, "rcnt"

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    const-string v1, "a11y"

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v2, 0x7f0a0525

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const-string v2, "ime"

    invoke-static {p1, v2, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v1, :cond_5

    const-string v2, "NavigationBarInflaterView"

    const-string v3, "  mCurrentLayout: "

    invoke-static {p1, v2, v3}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NavigationBarTransitions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mAlwaysOpaque: false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mAllowAutoDimWallpaperNotVisible: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    const-string v4, "  mWallpaperVisible: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    const-string v4, "  mLightsOut: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    const-string v4, "  mAutoDim: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    const-string v4, "  bg overrideAlpha: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOverrideAlpha:F

    const-string v4, "  bg color: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    const-string v4, "  bg frame: "

    invoke-static {v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    const-string v3, "ContextualButtonGroup"

    const-string v4, "  getVisibleContextButton(): "

    invoke-static {p1, v3, v4}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  isVisible(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    const-string v6, "  attached(): "

    invoke-static {v3, v4, p1, v6}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v7

    goto :goto_6

    :cond_7
    move v2, v5

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mButtonData [ "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    :goto_7
    if-ltz v2, :cond_9

    iget-object v3, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object v4, v3, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    const-string v6, "    "

    const-string v8, ": markedVisible="

    invoke-static {v2, v6, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v3, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visible="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " attached="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v7

    goto :goto_8

    :cond_8
    move v4, v5

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " alpha="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_9
    const-string v1, "  ]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "RegionSamplingHelper:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tsampleView isAttached: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tsampleView isScValid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_9

    :cond_a
    const-string v2, "notAttached"

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmSamplingEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    const-string v3, "\tmSamplingListenerRegistered: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const-string v3, "\tmSamplingRequestBounds: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmRegisteredSamplingBounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmLastMedianLuma: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    const-string v3, "\tmCurrentMedianLuma: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCurrentMedianLuma:F

    const-string v3, "\tmWindowVisible: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    const-string v3, "\tmWindowHasBlurs: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    const-string v3, "\tmWaitingOnDraw: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    const-string v3, "\tmRegisteredStopLayer: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmWrappedStopLayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmIsDestroyed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsDestroyed:Z

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tmIsWindowGone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsWindowGone:Z

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_c

    const-string v0, "AutoHideController:"

    const-string v1, "\tmAutoHideSuspended="

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    const-string v2, "\tisAnyTransientBarShown="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\thasPendingAutoHide="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tgetAutoHideTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x8ca

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tgetUserAutoHideTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x15e

    invoke-virtual {p0, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public final getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v4, v2, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v6, v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x11101e7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v6, :cond_2

    iget-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v10, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    invoke-direct {v10, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;-><init>(I)V

    iget-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    check-cast v9, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v9, v0, v10, v11, v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    if-eqz v9, :cond_2

    iget v10, v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->height:I

    iget v11, v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->insetHeight:I

    iget v12, v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->insetWidth:I

    iget v13, v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->width:I

    iget v9, v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->gravity:I

    move v14, v4

    goto :goto_2

    :cond_2
    const/16 v9, 0x50

    move v14, v5

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_2
    const/4 v15, 0x2

    const/4 v5, 0x3

    if-eqz v6, :cond_3

    if-nez v14, :cond_4

    :cond_3
    const v14, 0x10502c9

    const v7, 0x10502c4

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :cond_4
    :goto_3
    move/from16 v18, v10

    move/from16 v17, v13

    goto :goto_4

    :cond_5
    if-eq v1, v8, :cond_8

    if-eqz v1, :cond_8

    const v8, 0x10502ce

    if-eq v1, v4, :cond_7

    if-eq v1, v15, :cond_8

    if-eq v1, v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move v9, v5

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move/from16 v18, v10

    move/from16 v17, v13

    const/4 v9, 0x5

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_3

    :goto_4
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v21, -0x3

    const/16 v19, 0x7e3

    const v20, 0x20840028

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v10, 0x11101e9

    if-eqz v6, :cond_f

    new-instance v13, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    invoke-direct {v13, v11, v12, v1, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;-><init>(IIIZ)V

    iget v14, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    iget-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v5, 0x0

    invoke-virtual {v8, v0, v13, v14, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Insets;

    new-instance v5, Landroid/view/InsetsFrameProvider;

    iget-object v14, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v15

    const/4 v9, 0x0

    invoke-direct {v5, v14, v9, v15}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    new-array v14, v4, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v15, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v4, 0x7db

    invoke-direct {v15, v4, v13}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v15, v14, v9

    invoke-virtual {v5, v14}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    invoke-direct {v5, v11, v12, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;-><init>(III)V

    iget v9, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v5, v9, v11}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Insets;

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    invoke-virtual {v4, v5, v9}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    new-instance v5, Landroid/view/InsetsFrameProvider;

    iget-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v5, v9, v11, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x11101eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v5, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_9
    new-instance v9, Landroid/view/InsetsFrameProvider;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    new-instance v10, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    invoke-direct {v10, v1, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;-><init>(IZ)V

    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v10, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Insets;

    invoke-virtual {v9, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "navigation_bar_gesture_while_hidden"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v10, "navigation_bar_gesture_detail_type"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    if-ne v3, v11, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_d

    iget v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    if-eqz v3, :cond_e

    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    :goto_8
    const/4 v3, 0x5

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    :goto_9
    new-array v3, v3, [Landroid/view/InsetsFrameProvider;

    const/4 v12, 0x0

    aput-object v4, v3, v12

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    new-instance v4, Landroid/view/InsetsFrameProvider;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v9

    invoke-direct {v4, v5, v12, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v4, v12}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    invoke-static {v8, v12, v12, v12}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    invoke-static {v8, v12, v12, v12}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Landroid/view/InsetsFrameProvider;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v8}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v4, v12}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    invoke-static {v12, v12, v1, v12}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    invoke-static {v12, v12, v1, v12}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    iput-object v3, v7, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    goto/16 :goto_d

    :cond_f
    const/4 v12, 0x0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-direct {v1, v3, v12, v4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const/4 v4, -0x1

    if-eq v11, v4, :cond_10

    iget-boolean v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    if-nez v4, :cond_10

    invoke-static {v12, v12, v12, v11}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    new-instance v4, Landroid/view/InsetsFrameProvider;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v4, v5, v9, v8}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x11101eb

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10502c7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v8

    new-instance v9, Landroid/view/InsetsFrameProvider;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    if-eqz v8, :cond_12

    invoke-static {v12, v12, v12, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_12
    if-eqz v8, :cond_13

    iget v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    if-eqz v8, :cond_14

    iget v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    :goto_b
    const/4 v8, 0x5

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    goto :goto_b

    :goto_c
    new-array v8, v8, [Landroid/view/InsetsFrameProvider;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    const/4 v1, 0x1

    aput-object v4, v8, v1

    const/4 v1, 0x2

    aput-object v9, v8, v1

    new-instance v1, Landroid/view/InsetsFrameProvider;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v9

    invoke-direct {v1, v4, v10, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v10}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-static {v5, v10, v10, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-static {v5, v10, v10, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v8, v4

    new-instance v1, Landroid/view/InsetsFrameProvider;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v5

    const/4 v9, 0x1

    invoke-direct {v1, v4, v9, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v10}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-static {v10, v10, v3, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-static {v10, v10, v3, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v8, v3

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    :goto_d
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v6, :cond_15

    const v1, 0x7f130fa4

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_15
    const v1, 0x7f130cdb

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    :goto_e
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v0, 0x3

    goto :goto_11

    :cond_17
    :goto_10
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    :goto_11
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NavigationBar"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final getButtonLocations(ZZ)Landroid/graphics/Region;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    move p2, v0

    :cond_0
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v3, v2, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    :goto_0
    const v3, 0x7f0a07b4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, v2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v4, v2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Landroid/graphics/Rect;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v5, v2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    aget v8, v5, v0

    const/4 v9, 0x1

    aget v5, v5, v9

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v1, v3, v0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v1, v3, v0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v1, v3, v0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v2, 0x7f0a0525

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-static {v1, v3, v0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v1, v3, v0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Ljava/util/Map;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-static {v1, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateButtonLocation(Landroid/graphics/Region;Landroid/view/View;Z)V

    :cond_3
    return-object v1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getNavigationIconHints()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    return p0
.end method

.method public final getView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    return-object p0
.end method

.method public final handleTransientChanged()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-boolean v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateTransitionMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_1
    return-void
.end method

.method public final initSecondaryHomeHandleForRotation()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const v1, 0x7f0a0ad3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBar$4;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0x7e8

    const/4 v2, 0x0

    const v5, 0x20000138

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecondaryHomeHandle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x1040

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "initSecondaryHomeHandleForRotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->logNavbarOrientation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final logNavbarOrientation(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOrientationTrackingLogger:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v6, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger$logPrimaryAndSecondaryVisibility$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger$logPrimaryAndSecondaryVisibility$2;-><init>(Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;)V

    const/4 v7, 0x0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "NavbarOrientationTracking"

    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v0, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v2, v6, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v1, v6, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput v4, v6, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v3, v6, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final notifyNavigationBarScreenOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public final notifyRequestedGameToolsWin(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notifyRequestedGameToolsWin visible : "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "NavigationBar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifyRequestedGameToolsWin(Z)V

    return-void
.end method

.method public final notifyRequestedSystemKey(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const-wide v1, 0x800000000L

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide v1, 0x1000000000L

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public final notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne v0, p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notifySamsungPayInfo displayId : %d, visible: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "NavigationBar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->notifyPayInfo(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to notify pay info."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;-><init>(ZI)V

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    if-eq v1, v2, :cond_4

    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ACCESSIBILITY:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const v4, 0x7f130fa4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavBarLayout()V

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutDirection(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    goto :goto_1

    :cond_5
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onHomeLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a04f8

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressNavigationButtons(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "invocation_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/assist/AssistManager;->shouldOverrideAssist(I)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/os/Bundle;)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    iput-object v1, p1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mOnInvisibleRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->abortCurrentGesture()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    const/4 v3, 0x0

    const-string v4, "NavigationBar"

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v5, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    mul-float/2addr p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    add-float/2addr p2, v0

    float-to-double v0, p2

    float-to-double p1, p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_9

    const-string p1, "Touch slop passed. Abort."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->abortCurrentGesture()V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTelecomManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTelecomManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_6

    const-string p1, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    return v0

    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_DOWN Launcher override duration: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v5, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ACTION_DOWN default duration: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v5, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    :goto_0
    return v3
.end method

.method public final onInit()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTouchHandler:Lcom/android/systemui/navigationbar/NavigationBar$13;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->setNavBarMode(I)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    iput-object v4, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    iput-object v3, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mButtonForcedVisibleCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRotationButton()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;

    invoke-direct {v3, v1, p0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/navigationbar/NavigationBar;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v5, p0, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v4, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    iget-boolean v3, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarAttached()V

    :cond_2
    const/16 v2, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isLargeCoverScreenSyncEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "onInit() Cover navbar hidden: sync option is off"

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v6, "NavigationBar"

    invoke-virtual {v4, v6, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v4, :cond_5

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v3, :cond_6

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardViewController;->updateNavigationBarVisibility()V

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavBarHidden()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    if-eqz v0, :cond_9

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    invoke-direct {v4, v2}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    :goto_4
    iget v3, v4, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne v3, v6, :cond_a

    iget v3, v4, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    iput v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v6, "systemui"

    const-string v7, "home_button_long_press_duration_ms"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/systemui/util/DeviceConfigProxy;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/NavigationBar$2;

    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/NavBarHelper;->registerNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$5;

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_b

    const-string v4, "disabled_state"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    const-string v4, "disabled2_state"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    const-string v4, "appearance"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    const-string v4, "behavior"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    const-string/jumbo v4, "transient_state"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    const-string v4, "icon_hints"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    :cond_b
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/navigationbar/NavigationBar$6;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackListener:Lcom/android/systemui/navigationbar/NavigationBar$8;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateControllerCallback:Lcom/android/systemui/navigationbar/NavigationBar$9;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final onLongPressNavigationButtons(Landroid/view/View;I)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x7f0a013a

    const v5, 0x7f0a09a6

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v7, v2, v7

    const-wide/16 v9, 0xc8

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    if-ne p2, v5, :cond_1

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    :goto_0
    iget-object p2, p2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v6

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v7, v4, :cond_4

    move p2, v6

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v6

    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_7

    if-ne p2, v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeLongClick(Landroid/view/View;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return v0

    :cond_7
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    :try_start_6
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/16 p0, 0x80

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v6

    :goto_4
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    const-string p1, "NavigationBar"

    const-string p2, "Unable to reach activity manager"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return v0
.end method

.method public final onRecentsAnimationStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iput-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mHomeRotationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_0
    return-void
.end method

.method public final onRotationProposal(IZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_30

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_10

    :cond_0
    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    sget-boolean v5, Lcom/android/systemui/shared/rotation/RotationButtonController;->OEM_DISALLOW_ROTATION_IN_SUW:Z

    and-int/lit8 v3, v3, 0x10

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const-string v8, "NavigationBar"

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "onRotationProposal proposedRotation="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isValid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mNavBarWindowState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    invoke-static {v9}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", rotateSuggestionsDisabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isRotateButtonVisible="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-boolean v9, v9, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    invoke-static {v7, v9, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_3

    return-void

    :cond_3
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->rotateDisabledByPolicy()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "rotation button disabled by policy"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->OEM_DISALLOW_ROTATION_IN_SUW:Z

    if-eqz v0, :cond_6

    goto/16 :goto_10

    :cond_6
    :goto_2
    iget-object v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mWindowRotationProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v7, v3, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    if-eqz v7, :cond_30

    iget-boolean v7, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mHomeRotationEnabled:Z

    const-string v8, "RotationButtonController"

    if-nez v7, :cond_7

    iget-boolean v7, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v7, :cond_7

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_30

    const-string v0, "onRotationProposal home rotation disabled"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_7
    sget-boolean v7, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v7, :cond_8

    const/4 v9, -0x1

    if-ne v1, v9, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const-string v0, "onRotationProposal unknown rotation"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_30

    const-string v0, "onRotationProposal invalid"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_9
    iget-object v2, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v9, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    const-wide/16 v10, 0x0

    if-ne v1, v0, :cond_c

    if-eqz v7, :cond_b

    iput-wide v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    iget-boolean v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v3, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_a

    iput-boolean v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    const-string v0, "onRotationProposal rotation not changed"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    goto/16 :goto_10

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-boolean v3, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_d

    iget-wide v14, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    cmp-long v3, v14, v10

    if-eqz v3, :cond_d

    const-wide/16 v16, 0x3e8

    add-long v14, v14, v16

    cmp-long v3, v14, v12

    if-gtz v3, :cond_d

    const-string v0, "onRotationProposal rotation time over"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    goto/16 :goto_10

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "onRotationProposal(rotation="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastRotationSuggestion:I

    const/4 v3, 0x3

    const/4 v7, 0x2

    if-nez v0, :cond_f

    if-ne v1, v5, :cond_f

    :cond_e
    :goto_3
    move v10, v4

    goto :goto_5

    :cond_f
    if-nez v0, :cond_10

    if-ne v1, v7, :cond_10

    :goto_4
    move v10, v5

    goto :goto_5

    :cond_10
    if-nez v0, :cond_11

    if-ne v1, v3, :cond_11

    goto :goto_4

    :cond_11
    if-ne v0, v5, :cond_12

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    if-ne v0, v5, :cond_13

    if-ne v1, v7, :cond_13

    goto :goto_3

    :cond_13
    if-ne v0, v5, :cond_14

    if-ne v1, v3, :cond_14

    goto :goto_4

    :cond_14
    if-ne v0, v7, :cond_15

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    if-ne v0, v7, :cond_16

    if-ne v1, v5, :cond_16

    goto :goto_4

    :cond_16
    if-ne v0, v7, :cond_17

    if-ne v1, v3, :cond_17

    goto :goto_3

    :cond_17
    if-ne v0, v3, :cond_18

    if-nez v1, :cond_18

    goto :goto_3

    :cond_18
    if-ne v0, v3, :cond_19

    if-ne v1, v5, :cond_19

    goto :goto_4

    :cond_19
    if-ne v0, v3, :cond_e

    if-ne v1, v7, :cond_e

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_1c

    if-ne v0, v7, :cond_1a

    goto :goto_7

    :cond_1a
    if-eqz v10, :cond_1b

    iget v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    goto :goto_6

    :cond_1b
    iget v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    :goto_6
    iput v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    goto :goto_9

    :cond_1c
    :goto_7
    if-eqz v10, :cond_1d

    iget v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    goto :goto_8

    :cond_1d
    iget v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    :goto_8
    iput v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    :goto_9
    sget-boolean v10, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v10, :cond_2d

    iget v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungRotateButtonResId:I

    iput v10, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    sget-object v10, Lcom/android/systemui/shared/rotation/RotationUtil;->Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/shared/rotation/RotationUtil;->ccwCheckArray:[[Z

    aget-object v10, v10, v0

    aget-boolean v10, v10, v1

    const/16 v11, 0x53

    const/16 v12, 0x33

    const/16 v13, 0x35

    const/16 v14, 0x55

    if-eqz v0, :cond_23

    if-eq v0, v5, :cond_22

    if-eq v0, v7, :cond_21

    if-eq v0, v3, :cond_1e

    :goto_a
    move v11, v14

    goto :goto_b

    :cond_1e
    if-eqz v1, :cond_24

    if-eq v1, v5, :cond_20

    if-eq v1, v7, :cond_1f

    goto :goto_a

    :cond_1f
    move v11, v13

    goto :goto_b

    :cond_20
    move v11, v12

    goto :goto_b

    :cond_21
    if-eqz v1, :cond_20

    if-eq v1, v5, :cond_1f

    if-eq v1, v3, :cond_24

    goto :goto_a

    :cond_22
    if-eqz v1, :cond_1f

    if-eq v1, v7, :cond_24

    if-eq v1, v3, :cond_20

    goto :goto_a

    :cond_23
    if-eq v1, v5, :cond_24

    if-eq v1, v7, :cond_20

    if-eq v1, v3, :cond_1f

    goto :goto_a

    :cond_24
    :goto_b
    sput v11, Lcom/android/systemui/shared/rotation/RotationUtil;->floatingButtonPosition:I

    if-eqz v0, :cond_2a

    if-ne v0, v7, :cond_25

    goto :goto_e

    :cond_25
    if-eqz v1, :cond_28

    if-ne v1, v7, :cond_26

    goto :goto_c

    :cond_26
    if-ne v0, v5, :cond_27

    if-ne v1, v3, :cond_27

    iget v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart180ResId:I

    goto :goto_f

    :cond_27
    if-ne v0, v3, :cond_2c

    if-ne v1, v5, :cond_2c

    iget v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart180ResId:I

    goto :goto_f

    :cond_28
    :goto_c
    if-eqz v10, :cond_29

    iget v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart0ResId:I

    :goto_d
    move v4, v0

    goto :goto_f

    :cond_29
    iget v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart0ResId:I

    goto :goto_d

    :cond_2a
    :goto_e
    if-eqz v10, :cond_2b

    iget v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart90ResId:I

    goto :goto_d

    :cond_2b
    iget v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart90ResId:I

    goto :goto_d

    :cond_2c
    :goto_f
    iput v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mStyleRes:I

    :cond_2d
    iget-object v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget v1, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLightIconColor:I

    iget v3, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDarkIconColor:I

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateIcon(II)V

    invoke-virtual {v6}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v6}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    goto :goto_10

    :cond_2e
    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_2f

    iget-object v0, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "Drop rotation suggestion proposal while keyguard is showing"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_2f
    iput-boolean v5, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x4e20

    invoke-virtual {v2, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    :goto_10
    return-void
.end method

.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 6

    iget p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    if-eq p3, p2, :cond_a

    sget-boolean p3, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz p3, :cond_9

    if-eqz p3, :cond_9

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p6, "onSystemBarAttributesChanged() -"

    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p8, "  displayId:"

    invoke-direct {p6, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p6, ", appearance:"

    invoke-direct {p1, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_1

    const-string p1, "com.att"

    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ", packageName: "

    invoke-virtual {p1, p7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_8

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x1

    const-string p6, ""

    if-eqz p1, :cond_2

    const-string p1, "APPEARANCE_OPAQUE_STATUS_BARS "

    goto :goto_0

    :cond_2
    move-object p1, p6

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_3

    const-string p1, "APPEARANCE_OPAQUE_NAVIGATION_BARS "

    goto :goto_1

    :cond_3
    move-object p1, p6

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_4

    const-string p1, "APPEARANCE_LOW_PROFILE_BARS "

    goto :goto_2

    :cond_4
    move-object p1, p6

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_5

    const-string p1, "APPEARANCE_LIGHT_STATUS_BARS "

    goto :goto_3

    :cond_5
    move-object p1, p6

    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_6

    const-string p1, "APPEARANCE_LIGHT_NAVIGATION_BARS "

    goto :goto_4

    :cond_6
    move-object p1, p6

    :goto_4
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, 0x100000

    and-int/2addr p1, p2

    if-eqz p1, :cond_7

    const-string p6, "APPEARANCE_LIGHT_SEMI_TRANSPARENT_NAVIGATION_BARS "

    :cond_7
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p6, ", navbarColorManagedByIme:"

    invoke-direct {p1, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NavigationBar"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-static {p2, p1}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateTransitionMode(I)Z

    move-result p1

    :goto_5
    move v3, p1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_b

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    move v1, p2

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IIZZLjava/lang/String;)V

    :cond_b
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    if-eq p1, p5, :cond_d

    iput p5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p2, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    if-eq p1, p5, :cond_c

    iput p5, p2, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    invoke-virtual {p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p2, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    :cond_d
    return-void
.end method

.method public final onViewAttached()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    iput-object v5, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOptional:Ljava/util/Optional;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    iput-object v7, v5, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/android/systemui/shade/ShadeViewController;->updateSystemUiStateFlags()V

    :cond_0
    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    iget-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(ILcom/android/systemui/model/SysUiState;)V

    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v7, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v7, v5, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    iget-boolean v5, v5, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    xor-int/lit8 v4, v5, 0x1

    invoke-interface {v6, v4}, Lcom/android/systemui/shade/ShadeViewController;->setQsScrimEnabled(Z)V

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v4, :cond_4

    iget-object v6, v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "dark_intensity"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    if-eqz v7, :cond_2

    invoke-interface {v9, v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    iget v7, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    invoke-static {v4, v8, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-interface {v9, v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    :goto_0
    iget v4, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    iput v4, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    :cond_4
    iget v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/NavigationBar;->setNavigationIconHints(I)V

    iget v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iput-boolean v4, v6, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    invoke-virtual {v6}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-boolean v7, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v7, v4, :cond_6

    iput-boolean v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    invoke-virtual {v6}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    iget-object v7, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v7, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    if-eq v4, v6, :cond_7

    iput v6, v7, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    invoke-virtual {v7}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v7, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v4, :cond_7

    invoke-virtual {v7}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_7
    iget v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/NavigationBar;->setNavBarMode(I)V

    iget v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v6, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnComputeInternalInsetsListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

    invoke-virtual {v4, v6}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBackAnimation:Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6, v1}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7, v4, v6}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessObserver:Lcom/android/systemui/navigationbar/NavigationBar$7;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v6, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->notifyNavigationBarScreenOn()V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/navigationbar/NavigationBar$3;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v6, v4}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/shared/rotation/RotationButtonController;->isRotationLocked()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v6

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-nez v6, :cond_a

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/systemui/shared/rotation/RotationButtonController;->isRotationLocked()Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, v4, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "NavigationBar#onViewAttached"

    invoke-static {v4, v6, v3, v7}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_2

    :cond_9
    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    :cond_a
    :goto_2
    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    sget-boolean v6, Lcom/android/systemui/shared/rotation/RotationButtonController;->OEM_DISALLOW_ROTATION_IN_SUW:Z

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_b

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    iget-object v1, v4, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, v4, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->initSecondaryHomeHandleForRotation()V

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMainLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_4

    :cond_c
    iget-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v11, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mNavModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object v6, v2

    move-object/from16 v16, v3

    invoke-direct/range {v6 .. v16}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V

    move-object v1, v2

    :goto_4
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz v1, :cond_e

    iget-object v3, v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {v1, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_d
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v3, :cond_e

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMainAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_5

    :cond_f
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideControllerFactory:Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-direct {v3, v1, v5, v4}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v3, v1}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_10
    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v4, :cond_11

    iget v5, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "restoreAppearanceAndTransientState"

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IIZZLjava/lang/String;)V

    :cond_11
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_12

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    invoke-direct {v1, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;-><init>(I)V

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_12
    return-void
.end method

.method public final onViewDetached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCallback:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, v2, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/navigationbar/NavigationBar$3;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessObserver:Lcom/android/systemui/navigationbar/NavigationBar$7;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBar$4;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnComputeInternalInsetsListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/NavigationBar$2;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/NavBarHelper;->removeNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object v1, v2, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final orientSecondaryHomeHandle()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    goto/16 :goto_3

    :cond_0
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    sub-int v3, v0, v3

    if-gez v3, :cond_1

    add-int/lit8 v3, v3, 0x4

    :cond_1
    if-eq v0, v2, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    const-string/jumbo v0, "secondary nav delta rotation: "

    const-string v2, " current: "

    invoke-static {v3, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const-string v4, "NavigationBar"

    invoke-static {v2, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iput v3, v2, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_4

    move v0, v5

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v5

    :goto_0
    sub-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    return-void

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_9

    const/16 v2, 0x50

    goto :goto_2

    :cond_9
    if-ne v3, v4, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x5

    :goto_2
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v1, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "orientSecondaryHomeHandle"

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->logNavbarOrientation(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final prepareNavigationBarView()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    if-eqz v3, :cond_0

    iput-object v3, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    iget-object v4, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setNavBarButtonClickLoggerForViewChildren(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v4

    if-eqz v3, :cond_1

    iput-object v3, v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mNavBarButtonClickLogger:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    iget-object v3, v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    iget-object v6, v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v4, v6}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setNavBarButtonClickLoggerForViewChildren(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityStateFlags()V

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v6, 0x7f0a0525

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v6, :cond_3

    invoke-virtual {v4, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v4, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v5, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    return-void
.end method

.method public final reconfigureHomeLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressHapticEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1
    return-void
.end method

.method public final repositionNavigationBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetSecondaryHandle()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo v0, "resetSecondaryHandle"

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->logNavbarOrientation(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public final setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/NavigationBar$1;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_2

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 5

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/navigationbar/NavBarHelper;->isImeShown(I)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_1
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "setImeWindowStatus displayId="

    const-string v3, " vis="

    const-string v4, " backDisposition="

    invoke-static {p1, p3, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " showImeSwitcher="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " imeShown="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "NavigationBar"

    invoke-static {p1, v0, p3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, p1

    :goto_0
    iget p5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-static {p5, p4, v0, p3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->calculateBackDispositionHints(IIZZ)I

    move-result p3

    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    if-ne p3, p4, :cond_4

    return-void

    :cond_4
    sget-boolean p4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iget-object p5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz p4, :cond_5

    new-instance p4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    invoke-direct {p4, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;-><init>(I)V

    move-object v2, p5

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v2, p0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    iput p3, p2, Lcom/android/systemui/navigationbar/NavBarHelper;->mLastIMEhints:I

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->setNavigationIconHints(I)V

    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Optional;

    new-instance p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;

    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p3, p3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class p4, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {p3, p4}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    if-eqz p3, :cond_7

    iget-boolean p1, p3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    :cond_7
    invoke-direct {p2, v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;-><init>(ZZ)V

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-interface {p5, p0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_8
    return-void
.end method

.method public final setNavBarMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput p1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeDrawsImeNavBar:Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iput p1, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v1, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    iput v2, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mNavBarMode:I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRotationButton()V

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public final setNavigationIconHints(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mImeVisible:Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    iput p1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_6
    :goto_2
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    return-void
.end method

.method public final setWindowState(III)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-eq p2, p3, :cond_3

    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    :cond_1
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-nez p1, :cond_2

    move p2, v0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iput-boolean p2, p1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq p1, p2, :cond_3

    iput-boolean p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_3
    return-void
.end method

.method public final showTransient(IIZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShownFromGestureOnSystemBar:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_2
    return-void
.end method

.method public final updateAccessibilityStateFlags()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-wide/16 v8, 0x20

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1, v0, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarUpdateA11YService;

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarUpdateA11YService;-><init>(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    return-void
.end method

.method public final updateNavBarLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mFrame:Lcom/android/systemui/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final updateNavBarStyle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public final updateScreenPinningGestures()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    return-void
.end method

.method public final updateSystemUiStateFlags()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-wide v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    const-wide/16 v2, 0x10

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    const-wide/16 v9, 0x20

    and-long/2addr v0, v9

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {v1, v9, v10, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    xor-int/2addr v0, v5

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v8

    :goto_3
    const-wide/32 v2, 0x40000

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v8

    :goto_4
    const-wide/32 v2, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    goto :goto_5

    :cond_5
    move v5, v8

    :goto_5
    const-wide/32 v2, 0x20000

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    :cond_6
    return-void
.end method

.method public final updateTransitionMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;-><init>(I)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
