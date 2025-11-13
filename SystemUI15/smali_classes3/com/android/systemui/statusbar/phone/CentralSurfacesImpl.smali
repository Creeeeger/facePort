.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/phone/CentralSurfaces;
.implements Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;


# static fields
.field public static final sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

.field public final mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

.field public final mAiAgentEffect:Lcom/android/systemui/aiagent/AiAgentEffect;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public mAmbientIndicationContainer:Landroid/view/View;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public final mBackActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

.field public final mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

.field public mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

.field public mBouncerContainer:Landroid/widget/FrameLayout;

.field public mBouncerShowing:Z

.field public mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mCameraLauncherLazy:Ldagger/Lazy;

.field public final mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

.field public mCloseQsBeforeScreenOff:Z

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

.field public final mCommandQueueCallbacksLazy:Ldagger/Lazy;

.field public final mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentDisplaySize:Landroid/graphics/Point;

.field public final mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public mDeviceInteractive:Z

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDismissingShadeForActivityLaunch:Z

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDozing:Z

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

.field public final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field public final mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFingerprintManager:Ljavax/inject/Provider;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field public final mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

.field public final mInitController:Lcom/android/systemui/InitController;

.field public mInteractingWindows:I

.field public mIsDlsOverlay:Z

.field public mIsFolded:Z

.field public mIsIdleOnCommunal:Z

.field public mIsLaunchingActivityOverLockscreen:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public mLastCameraLaunchSource:I

.field public mLastLoggedStateFingerprint:I

.field public mLaunchCameraOnFinishedGoingToSleep:Z

.field public mLaunchCameraWhenFinishedWaking:Z

.field public mLaunchEmergencyActionOnFinishedGoingToSleep:Z

.field public mLaunchEmergencyActionWhenFinishedWaking:Z

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNavBarHelperLazy:Ldagger/Lazy;

.field public mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public mNoAnimationOnNextBarModeChange:Z

.field public final mNoteTaskControllerLazy:Ldagger/Lazy;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

.field public final mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final mNotificationActivityStarterLazy:Ldagger/Lazy;

.field public final mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public final mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

.field public mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

.field public final mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPresenterLazy:Ldagger/Lazy;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public mReportRejectedTouch:Landroid/view/View;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

.field public mSecLockIconView:Landroid/view/ViewGroup;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

.field public mShouldDelayLockscreenTransitionFromAod:Z

.field public mShouldDelayWakeUpAnimation:Z

.field public final mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mStartingSurfaceOptional:Ljava/util/Optional;

.field public mState:I

.field public final mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

.field public final mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarStateLog:Landroid/metrics/LogMaker;

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public mStatusBarWindowState:I

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public mTransitionToFullShadeProgress:F

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public mUiModeManager:Landroid/app/UiModeManager;

.field public final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field protected mUserSetup:Z

.field public final mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field public final mWallpaperController:Lcom/android/systemui/util/WallpaperController;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperSupported:Z

.field public final mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public static -$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    return-void
.end method

.method public static -$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lcom/android/systemui/Flags;->lightRevealMigration()V

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    instance-of v5, v5, Lcom/android/systemui/statusbar/CircleReveal;

    if-nez v5, :cond_2

    iget v5, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    if-ne v5, v3, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-nez p1, :cond_3

    iget v6, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    if-eqz v1, :cond_6

    if-eqz p1, :cond_4

    iget v7, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/16 v8, 0x71

    if-ne v7, v8, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-nez p1, :cond_5

    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/16 v8, 0x17

    if-ne v2, v8, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    const-string/jumbo v2, "updateRevealEffect: wakingUp="

    const-string v4, " wakingUpFromPowerButton="

    const-string v8, " sleepingFromPowerButton="

    invoke-static {v2, v4, v8, p1, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " wakingUpFromDoubleTap="

    const-string v8, " sleepingFromDoubleTap="

    invoke-static {v2, v6, v4, v7, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "CentralSurfaces"

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    move v4, v7

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_e

    if-eqz v6, :cond_7

    goto/16 :goto_7

    :cond_7
    if-eqz v1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_9

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    if-eqz v1, :cond_b

    iget p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    iput p1, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    goto :goto_6

    :cond_9
    :goto_5
    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeSurface;->getTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    if-eqz v1, :cond_b

    iget v3, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    iput v3, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    iget p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    iput p1, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    goto :goto_6

    :cond_a
    iget-object p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-nez p0, :cond_f

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    sub-float/2addr v7, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    iget-object p0, v0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    instance-of p0, p0, Lcom/android/systemui/statusbar/CircleReveal;

    if-nez p0, :cond_f

    :cond_d
    sget-object p0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    sub-float/2addr v7, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    goto :goto_8

    :cond_e
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    sub-float/2addr v7, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_f
    :goto_8
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/mdm/MdmOverlayContainer;Ldagger/Lazy;Lcom/android/systemui/bixby2/SystemUICommandActionHandler;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/subscreen/SubScreenManager;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/core/StatusBarInitializer;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/util/kotlin/JavaAdapter;Ljava/util/concurrent/Executor;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Lcom/android/systemui/biometrics/AuthRippleController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/back/domain/interactor/BackActionInteractor;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouter;Landroid/app/WallpaperManager;Ljava/util/Optional;Lcom/android/systemui/animation/ActivityTransitionAnimator;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/charging/WiredChargingRippleController;Landroid/service/dreams/IDreamManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/UserTracker;Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;Lcom/android/systemui/shade/GlanceableHubContainerController;Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;Lcom/android/systemui/blur/SecQpBlurController;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/keyguard/KeyguardFoldController;Ldagger/Lazy;Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mdm/MdmOverlayContainer;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/bixby2/SystemUICommandActionHandler;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/systemui/statusbar/core/StatusBarInitializer;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/shade/ShadeSurface;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/shade/QuickSettingsController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/back/domain/interactor/BackActionInteractor;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/util/WallpaperController;",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/MessageRouter;",
            "Landroid/app/WallpaperManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;",
            ">;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/charging/WiredChargingRippleController;",
            "Landroid/service/dreams/IDreamManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/LightRevealScrim;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;",
            "Lcom/android/systemui/shade/GlanceableHubContainerController;",
            "Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;",
            "Lcom/android/systemui/blur/SecQpBlurController;",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aiagent/AiAgentEffect;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p26

    move-object/from16 v3, p54

    move-object/from16 v4, p90

    move-object/from16 v5, p94

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayWakeUpAnimation:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayLockscreenTransitionFromAod:Z

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    new-instance v8, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v8, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsIdleOnCommunal:Z

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$13;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    move-object v8, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    move-object v8, p4

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v8, p17

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v8, p19

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v8, p21

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v8, p63

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBackActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    move-object/from16 v8, p80

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v8, p83

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v8, p23

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v8, p22

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v8, p24

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v8, p25

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v8, p27

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v8, p28

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v8, p29

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v8, p30

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v8, p31

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v8, p32

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v8, p33

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    move-object/from16 v8, p34

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v8, p35

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v8, p36

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v8, p37

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object/from16 v8, p38

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v8, p39

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v8, p40

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v8, p41

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v8, p42

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v8, p43

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    move-object/from16 v8, p44

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v8, p45

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    move-object/from16 v8, p46

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoteTaskControllerLazy:Ldagger/Lazy;

    move-object/from16 v8, p47

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v8, p48

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 v8, p49

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-object/from16 v8, p50

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v8, p51

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v8, p52

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v8, p53

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    move-object/from16 v3, p55

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenterLazy:Ldagger/Lazy;

    move-object/from16 v3, p56

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarterLazy:Ldagger/Lazy;

    move-object/from16 v3, p57

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    move-object/from16 v3, p62

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v3, p64

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v3, p58

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v3, p59

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v3, p65

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v3, p60

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v3, p82

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    move-object/from16 v3, p66

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v3, p67

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v3, p68

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacksLazy:Ldagger/Lazy;

    move-object/from16 v3, p69

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object/from16 v3, p70

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v3, p71

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    move-object/from16 v3, p72

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v3, p73

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v3, p74

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v3, p76

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-object/from16 v3, p77

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    move-object/from16 v3, p78

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    move-object/from16 v3, p79

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v3, p81

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 v3, p84

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p85

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    move-object/from16 v3, p87

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    move-object/from16 v3, p89

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-object/from16 v3, p91

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v3, p93

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    move-object/from16 v3, p95

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v3, p101

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    move-object/from16 v3, p104

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v3, p105

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v3, p106

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFingerprintManager:Ljavax/inject/Provider;

    move-object/from16 v3, p107

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v3, p109

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    move-object/from16 v3, p110

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v3, p96

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    move-object/from16 v3, p100

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iput-object v0, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    move-object/from16 v4, p13

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->addListener(Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;)V

    move-object/from16 v3, p86

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    new-instance v2, Lcom/android/systemui/ActivityIntentHelper;

    invoke-direct {v2, p6}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, p97

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-static/range {p75 .. p75}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    invoke-interface {v5, v3, v2}, Lcom/android/systemui/util/concurrency/MessageRouter;->subscribeTo(Ljava/lang/Class;Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const/16 v3, 0x403

    invoke-interface {v5, v3, v2}, Lcom/android/systemui/util/concurrency/MessageRouter;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$AnimateExpandSettingsPanelMessage;

    invoke-interface {v5, v3, v2}, Lcom/android/systemui/util/concurrency/MessageRouter;->subscribeTo(Ljava/lang/Class;Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const/16 v3, 0x3eb

    invoke-interface {v5, v3, v2}, Lcom/android/systemui/util/concurrency/MessageRouter;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    move-object/from16 v2, p98

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    move-object/from16 v2, p103

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    sget-object v2, Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;->INSTANCE:Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v2, :cond_0

    const-string v2, "CentralSurfaces"

    const-string/jumbo v3, "setEnableOnBackInvokedCallback true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    new-instance v2, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v3, "CS"

    invoke-direct {v2, v3}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v2, p111

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-static {p6}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v1, :cond_1

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    :cond_1
    move-object/from16 v1, p112

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarHelperLazy:Ldagger/Lazy;

    move-object/from16 v1, p113

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v1, p114

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v1, p115

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "register observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.samsung.systemui.notilus"

    const-string v5, "com.samsung.systemui.notilus.service.NotificationListener"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    const/4 v4, 0x2

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_5

    :goto_1
    sget-object v3, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "There is no Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginManager;

    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    const-class v3, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-interface {v1, v2, v3, v7}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_6

    move-object/from16 v1, p116

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    :cond_6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->AI_AGENT_EFFECT:Z

    if-eqz v1, :cond_7

    move-object/from16 v1, p118

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAiAgentEffect:Lcom/android/systemui/aiagent/AiAgentEffect;

    :cond_7
    return-void
.end method


# virtual methods
.method public final animateExpandNotificationsPanel(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_2

    move-object v0, p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p2, v0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p2}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-boolean p2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "animateExpandNotificationsPanel: isKeyguardState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final awakenDreams()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkBarModes$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->toTransitionModeInt()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->checkNavBarModes(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method public final checkRemoteInputRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "CentralSurfaces"

    if-nez p1, :cond_0

    const-string p0, " RemoteInput: extra value is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled2:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const-string p0, " RemoteInput: disabled panel "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, " RemoteInput: no entry for "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_6

    array-length v5, v4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    iget-object v6, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string v0, "REMOTE_INPUT_CLICK"

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v3, p2, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;I)V

    const-wide/16 v0, 0x1f4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const-string p0, " RemoteInput: no remote input for "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_1
    const-string p0, " RemoteInput: no actions for "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, " translationX "

    const-string v1, " scroll "

    const-string v2, "  mStackScroller: "

    const-string v3, "  mDisplayMetrics="

    const-string v4, "  mExpandedVisible="

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v6, "Current Status Bar state:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v4}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  mInteractingWindows="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mStatusBarWindowState="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDozing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "  mWallpaperSupported= "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "PhoneStatusBarTransitions"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    const-string v0, "  mMediaManager: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    const-string v0, "  Panels: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mStackScroller: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (dump moved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Theme:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    dark theme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (auto: 0, yes: 2, no: 1)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x7f140610

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "    light wallpaper theme: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLightRevealScrim.getRevealEffect(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLightRevealScrim.getRevealAmount(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iget v1, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "  mHeadsUpManager: null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v0, "  mStatusBarTouchableRegionManager: null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    const-string v0, "SharedPreferences:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "  "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    const-string v0, "Camera gesture intents:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   Insecure camera: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    sget-object v1, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "   Secure camera: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   Override package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1303d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_b

    goto :goto_5

    :catch_0
    move-exception v1

    const-string v2, "Missing cameraGesturePackage "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraIntents"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    move-object v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Dump of NavBarStoreImpl : "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Number of created navigation bar : "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Navigationbar "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " states : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v2, :cond_c

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/model/NavBarStates;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    :cond_c
    move-object v2, v5

    :goto_7
    if-nez v2, :cond_d

    const-string v2, "NavBarStateManager is null."

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_6

    :cond_e
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_10
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_11

    const-string v0, "Current SubscreenNotificationController state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->dump(Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final finishKeyguardFadingAway()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1000

    const-string v4, "keyguardFadingAway"

    invoke-static {v2, v3, v4, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    return-object p0
.end method

.method public final hideKeyguard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    move-result p0

    return p0
.end method

.method public initShadeVisibilityListener()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V

    return-void
.end method

.method public final isCameraAllowedByAdmin()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v3, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    move v2, v4

    :cond_1
    return v2

    :cond_2
    return v4
.end method

.method public final isForegroundComponentName(Landroid/content/ComponentName;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    const-string v3, "CentralSurfaces"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v0, :cond_1

    const-string p0, "Checking ForegroundComponent - fold opened"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string p0, "Checking ForegroundComponent - Lockscreen Shown"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow$1()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    const-string p0, "Checking ForegroundComponent - SubScreen is focused"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v4, v0

    :cond_4
    const-string p0, "Foreground component state :: "

    invoke-static {p0, v3, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4
.end method

.method public final isGoingToSleep()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logStateToEventlog()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x9

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0xa

    or-int/2addr v5, v6

    shl-int/lit8 v6, v4, 0xb

    or-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0xc

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    if-eq v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v6, :cond_0

    new-instance v6, Landroid/metrics/LogMaker;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v3, :cond_1

    const/16 v8, 0xc5

    goto :goto_0

    :cond_1
    const/16 v8, 0xc4

    :goto_0
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v7

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    :goto_1
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x8ca4

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string v0, "BOUNCER"

    goto :goto_2

    :cond_3
    const-string v0, "LOCKSCREEN"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v0, "_OPEN"

    goto :goto_3

    :cond_4
    const-string v0, "_CLOSE"

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const-string v0, "_SECURE"

    goto :goto_4

    :cond_5
    const-string v0, "_INSECURE"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    move-result-object p0

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_6
    return-void
.end method

.method public final notifyBiometricAuthModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    const-string v0, "SYSUI_RAM_OPTIMIZATION onTrimMemory="

    const-string v1, "CentralSurfaces"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final openQSPanelWithDetail(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->expandQSForOpenDetail()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0xc8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public registerCallbacks()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FoldStateListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/FoldStateListener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->AI_AGENT_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAiAgentEffect:Lcom/android/systemui/aiagent/AiAgentEffect;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    :cond_0
    return-void
.end method

.method public final releaseGestureWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public setBarStateForTest(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    return-void
.end method

.method public final setInteracting(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes$1()V

    return-void
.end method

.method public final setPrimaryBouncerHiddenFraction(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final shouldIgnoreTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final shouldUseTabletKeyboardShortcuts()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/Flags;->SHORTCUT_LIST_SEARCH_LAYOUT:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$7;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 32

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/UiModeManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v7, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$listenForQsExpandedChange$1;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$listenForQsExpandedChange$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lkotlin/coroutines/Continuation;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v6, v5, v5, v3, v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mInitialized:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v10, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mInitialized:Z

    const-string v6, "icon_blacklist"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    iget-object v11, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v11, v3, v6}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v6, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopStatusBarIconUpdateCallback:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v3, v6}, Lcom/android/systemui/util/DesktopManager;->setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V

    :goto_0
    iget-object v11, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v6, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iput v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iput v3, v6, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->displayId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->initShadeVisibilityListener()V

    sget-object v3, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    new-instance v6, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    invoke-direct {v6}, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "setActionHandler - tag=edge_lighting_v3, actionHandler="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RoutineSdkImpl"

    invoke-static {v13, v12}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    const-string v12, "edge_lighting_v3"

    invoke-virtual {v3, v6, v12}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->set(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, v12, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v6, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz v3, :cond_1

    invoke-interface {v3, v5}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    :cond_1
    const-class v3, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    if-eqz v3, :cond_2

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$1;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v3, v13}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$1;)V

    :cond_2
    const-class v3, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    if-eqz v3, :cond_3

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$2;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$2;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v3, v13}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$2;)V

    :cond_3
    const-class v3, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    if-eqz v3, :cond_4

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v3, v13}, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;)V

    :cond_4
    const-class v3, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    if-eqz v3, :cond_5

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v3, v13}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;)V

    :cond_5
    const-class v3, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    if-eqz v3, :cond_6

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$5;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$5;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$6;

    invoke-direct {v14, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$6;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iput-object v13, v3, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->forcedVisibleCallback:Ljava/util/function/Consumer;

    iput-object v14, v3, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomSensitivityCallback:Ljava/util/function/Consumer;

    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v13}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->onNavigationSettingsChanged()V

    :cond_6
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v3, :cond_7

    const-class v13, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    invoke-virtual {v6, v13}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    if-eqz v13, :cond_7

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;

    invoke-direct {v14, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;)V

    :cond_7
    const-class v13, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;

    invoke-virtual {v6, v13}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;

    if-eqz v13, :cond_8

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;

    invoke-direct {v14, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;)V

    :cond_8
    const-class v13, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v6, v13}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    if-eqz v13, :cond_a

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$9;

    invoke-direct {v14, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$9;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$10;

    invoke-direct {v15, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$10;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v5, v13, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    const-class v10, Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v5, :cond_9

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    :cond_9
    new-instance v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    invoke-direct {v1, v14, v15}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, v13, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v5, v13, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    :cond_a
    const-class v1, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    if-eqz v1, :cond_b

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;)V

    :cond_b
    const-class v1, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    if-eqz v1, :cond_c

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;)V

    :cond_c
    const-class v1, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    if-eqz v1, :cond_e

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$13;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$13;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v10, v1, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockCallback:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    iget-object v13, v1, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz v10, :cond_d

    invoke-interface {v13, v10}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_d
    new-instance v10, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    invoke-direct {v10, v5, v1}, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;)V

    invoke-interface {v13, v10}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iput-object v10, v1, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockCallback:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    :cond_e
    const-class v1, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    if-eqz v1, :cond_f

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;)V

    :cond_f
    const-class v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    if-eqz v1, :cond_11

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$15;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$15;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v10, v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    if-eqz v10, :cond_10

    iget-object v13, v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v13, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_10
    new-instance v10, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    invoke-direct {v10, v5}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->intentFilter:Landroid/content/IntentFilter;

    iget-object v13, v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v20, 0x0

    const/16 v23, 0x3c

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v10

    move-object/from16 v18, v5

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v10, v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    :cond_11
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v1, :cond_12

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-nez v1, :cond_12

    const-class v1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->addCallback()V

    :cond_12
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v1, :cond_14

    const-class v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    if-eqz v1, :cond_14

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v10, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    if-eqz v10, :cond_13

    iget-object v13, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v13, v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_13
    new-instance v10, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    invoke-direct {v10, v5}, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;)V

    iput-object v10, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    iget-object v5, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->intentFilter:Landroid/content/IntentFilter;

    iget-object v13, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v13, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v13}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    iget-object v1, v1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v19, 0x0

    const/16 v23, 0x30

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    move-object/from16 v18, v5

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_14
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v1, :cond_1a

    :cond_15
    const-class v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    if-eqz v1, :cond_1a

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v10, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;

    invoke-direct {v10, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;

    invoke-direct {v13, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;

    invoke-direct {v14, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v15, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    if-eqz v15, :cond_16

    iget-object v9, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v9, :cond_16

    invoke-virtual {v9, v15}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_16
    new-instance v9, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v15, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->context:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;

    invoke-direct {v4, v1, v5, v10}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-direct {v9, v15, v4}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v9, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    if-eqz v4, :cond_17

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    :cond_17
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    invoke-direct {v4, v1, v13}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    invoke-interface {v4, v5}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    :cond_18
    iget-object v4, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v4, :cond_19

    iget-object v5, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v9, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v9}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_19
    iput-object v14, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->largeCoverRotationCallback:Ljava/util/function/Consumer;

    :cond_1a
    const-class v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    invoke-virtual {v6, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    if-eqz v1, :cond_1b

    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;

    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->addCallback(Ljava/lang/Runnable;)V

    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    if-eqz v3, :cond_1c

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz v1, :cond_1c

    check-cast v1, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    :cond_1c
    :try_start_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateResources$1()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateTheme()V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootViewComponentFactory:Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;

    invoke-interface {v4}, Lcom/android/systemui/scene/ui/view/WindowRootViewComponent$Factory;->create()Lcom/android/systemui/scene/ui/view/WindowRootViewComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/scene/ui/view/WindowRootViewComponent;->getWindowRootView()Lcom/android/systemui/scene/ui/view/WindowRootView;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mShadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v6, v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v6}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    new-instance v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    const/4 v10, 0x2

    invoke-direct {v9, v3, v10}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    invoke-static {v4, v6, v9}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v5, v5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v5}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    const/4 v9, 0x3

    invoke-direct {v6, v3, v9}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCommunalInteractor:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v5, v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    const/4 v9, 0x4

    invoke-direct {v6, v3, v9}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v5}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v6, 0x7f0a0826

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sget-object v6, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFeatureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    iput-object v6, v5, Lcom/android/systemui/scene/ui/view/WindowRootView;->layoutInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-direct {v6, v4}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    iput-object v6, v5, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;

    invoke-direct {v6, v4}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    iget-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iput-object v5, v6, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v5, v5, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v9, v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v5, v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array {v9, v5}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4, v8}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;I)V

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v5, v4}, Lcom/android/systemui/shade/ShadeController;->setNotificationShadeWindowViewController(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBackActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    iput-object v4, v6, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->qsController:Lcom/android/systemui/shade/QuickSettingsController;

    iget-object v9, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iput-object v9, v6, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda35;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda35;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    invoke-virtual {v6, v4}, Lcom/android/systemui/util/WallpaperController;->setRootView(Landroid/view/View;)V

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v6, v4}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v4, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v6, v4, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v6, v6, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v13, 0x4

    invoke-direct {v10, v7, v13}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v13, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v13, v6, v10}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacksLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iput-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    const-class v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-virtual {v10, v6}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    const-class v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v10, v6}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    iput-object v6, v10, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->statusBarViewUpdatedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    iget-object v6, v10, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->windowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object v13, v6, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    iget-object v6, v6, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    invoke-virtual {v13, v6}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v6

    new-instance v13, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;

    invoke-direct {v13, v10}, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;-><init>(Lcom/android/systemui/statusbar/core/StatusBarInitializer;)V

    const-string v14, "CollapsedStatusBarFragment"

    invoke-virtual {v6, v14, v13}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    iget-object v6, v6, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    iget-object v10, v10, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->collapsedStatusBarFragmentProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    const v13, 0x7f0a0c12

    invoke-virtual {v6, v13, v10, v14}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iput-object v6, v10, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    const v13, 0x7f0a0820

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v10, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->updateAccessibilityButtonModeIfNeeded()V

    sget-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v10, :cond_1e

    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->initializeTaskbarIfNecessary()Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_2

    :cond_1d
    move v10, v8

    goto :goto_3

    :cond_1e
    :goto_2
    const/4 v10, 0x1

    :goto_3
    iget-object v13, v6, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object v14, v13

    check-cast v14, Lcom/android/systemui/settings/DisplayTrackerImpl;

    iget-object v14, v14, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v14}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v14

    array-length v15, v14

    :goto_4
    if-ge v8, v15, :cond_21

    move/from16 v19, v15

    aget-object v15, v14, v8

    if-nez v10, :cond_1f

    invoke-virtual {v15}, Landroid/view/Display;->getDisplayId()I

    move-result v20

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v20, :cond_20

    :cond_1f
    move/from16 v20, v10

    const/4 v10, 0x0

    goto :goto_6

    :cond_20
    move/from16 v20, v10

    :goto_5
    const/4 v10, 0x1

    goto :goto_7

    :goto_6
    invoke-virtual {v6, v15, v10, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    goto :goto_5

    :goto_7
    add-int/2addr v8, v10

    move/from16 v15, v19

    move/from16 v10, v20

    goto :goto_4

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0a05ce

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0a00d8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object v6, v8, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0a0a57

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v10, 0x7f0a0a5a

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v13, 0x7f0a0a58

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/scrim/ScrimView;

    new-instance v13, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v14, 0x5

    invoke-direct {v13, v7, v14}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v14, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object v13, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    const-class v13, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v15, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v15, v13}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v15, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    move-object/from16 v19, v12

    const/4 v12, 0x3

    invoke-direct {v15, v7, v12}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v15, v13, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    iput-object v8, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iput-object v6, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iput-object v10, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v10, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    new-instance v12, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    new-instance v13, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    new-instance v15, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;

    move-object/from16 v27, v11

    const/4 v11, 0x1

    invoke-direct {v15, v14, v11}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;

    move-object/from16 v28, v2

    const/4 v2, 0x2

    invoke-direct {v11, v14, v2}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;

    move-object/from16 v29, v4

    const/4 v4, 0x3

    invoke-direct {v2, v14, v4}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    move-object/from16 v30, v1

    const/4 v1, 0x1

    invoke-direct {v4, v14, v1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    move-object/from16 v31, v3

    const/4 v3, 0x2

    invoke-direct {v1, v14, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move-object/from16 v23, v11

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    iput-object v12, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object v1, v12, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mFrontScrimSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    iput-object v1, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, v12, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mBehindScrimSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    iput-object v1, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, v12, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mNotificationsScrimSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v1, :cond_22

    const-wide/16 v1, 0x200

    invoke-static {v10, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_22
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;

    invoke-direct {v1, v10}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;

    invoke-direct {v1, v10}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateThemeColors()V

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v14, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v14, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v14, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v2, :cond_23

    check-cast v1, Lcom/android/systemui/scrim/ScrimDrawable;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_23
    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, v1, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v2, :cond_25

    check-cast v1, Lcom/android/systemui/scrim/ScrimDrawable;

    iget-boolean v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    goto :goto_8

    :cond_24
    iput-boolean v3, v1, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_25
    :goto_8
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_27

    aget-object v3, v1, v2

    iget-object v4, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v10, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v11, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v12, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object v13, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v20, v0

    const v0, 0x7f060931

    invoke-virtual {v15, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iput-object v10, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iput-object v11, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object v12, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_26

    iput-object v13, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    :cond_26
    aget-object v0, v1, v2

    iget v3, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    iput v3, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    iget v3, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    iput v3, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    goto :goto_9

    :cond_27
    move-object/from16 v20, v0

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    invoke-direct {v4, v14}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;-><init>(Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;)V

    iput-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransparentScrimBackground:Z

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    invoke-virtual {v3, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_a

    :cond_28
    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, v14, v1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    iput-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->scrimAlpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mAlternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;->scrimAlpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v4, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    iget-object v8, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v4, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->lightRevealMigration()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x6

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iput-object v0, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaqueChangedListener:Ljava/util/function/Consumer;

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    invoke-interface {v9, v0}, Lcom/android/systemui/shade/ShadeSurface;->setUserSetupComplete$1(Z)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v3, v7, v9, v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/LightRevealScrim;)V

    goto :goto_b

    :cond_29
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-interface {v9, v7, v0, v1}, Lcom/android/systemui/shade/ShadeSurface;->initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v1, 0x7f0a0975

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    const-class v4, Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 v8, 0x0

    invoke-direct {v6, v3, v8}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;I)V

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda30;

    invoke-direct {v3, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda30;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v4, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v8, v4, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    invoke-direct {v10, v4, v3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    move-result-object v3

    const-string v4, "QS"

    invoke-static {v1, v0, v3}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    iget-object v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v15, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x7

    invoke-direct {v15, v7, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-object v14, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/function/Consumer;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda32;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda32;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v1, 0x7f0a09c5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateReportRejectedTouchVisibility()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda33;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda33;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2c
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string/jumbo v2, "sysui:GestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerBroadcastReceiver()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;->onUserSetupChanged()V

    const-string v0, "disableProfileBars"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambientRatio"

    invoke-static {v1, v0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.action.REQUEST_REMOTE_INPUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    if-eqz v0, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iput-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    :cond_2d
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/16 v13, 0x7f8

    const/4 v11, -0x1

    const v14, -0x7f7bffb8

    const/4 v15, -0x3

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "NotificationShade"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_2e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_2f
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_30
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    :cond_31
    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object v2, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v2, :cond_32

    iget-object v3, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onRootViewAttached(Landroid/view/ViewGroup;)V

    :cond_32
    if-eqz v2, :cond_33

    new-instance v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setNoSensorConsumer(Ljava/util/function/Consumer;)V

    :cond_33
    new-instance v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$2;

    invoke-direct {v2, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$2;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iget-object v1, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setNoSensorConsumer() consumer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardWallpaperController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWideColorGamutConsumer() consumer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "StatusBarWindowController.getBarLayoutParams"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/WindowManager$LayoutParams;

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    :goto_c
    const/4 v3, 0x3

    if-gt v2, v3, :cond_34

    iget-object v3, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_c

    :cond_34
    iput-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIsAttached:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iput-object v0, v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    iget-object v1, v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarterLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v2, v4, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenterLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast v5, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    iput-object v4, v5, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStackController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v8, v4, v6, v3, v5}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->initialize(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iput-object v2, v3, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object v8, v3, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz v2, :cond_35

    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v2, :cond_35

    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    :cond_35
    move-object/from16 v8, v20

    iget v1, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_37

    move-object/from16 v4, v29

    iget-object v1, v4, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v2, :cond_36

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    :cond_36
    iget-object v1, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_isTransientShown:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_37
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_38

    iget-object v3, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v5, v28

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_d

    :cond_38
    const-string v1, "com.android.systemui.statusbar.banner_action_cancel"

    const-string v2, "com.android.systemui.statusbar.banner_action_setup"

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v12

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    const/4 v15, 0x2

    const-string v13, "com.android.systemui.permission.SELF"

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    if-eqz v1, :cond_39

    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4, v2, v3}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_39
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->init()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    const-string v1, "CentralSurfaces#startKeyguard"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    iget-object v3, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;

    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v2, 0x7f0a0aaa

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLockIconView:Landroid/view/ViewGroup;

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerCentralSurfaces$1(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v2, v27

    iput-object v1, v2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_3a
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEFAULT_LANDSCAPE:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->setLandscapeDefaultRotation()V

    :cond_3b
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3c

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V

    :cond_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanelViewController:Lcom/android/systemui/shade/ShadeViewController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->init()V

    iget v0, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    iget v1, v8, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, v7, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;II)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInitController:Lcom/android/systemui/InitController;

    iget-boolean v1, v0, Lcom/android/systemui/InitController;->mTasksExecuted:Z

    if-nez v1, :cond_3e

    iget-object v0, v0, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerCallbacks()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    const-class v1, Lcom/android/systemui/plugins/OverlayPlugin;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v7, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    iput-object v7, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v2, 0x7f0a05a7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v2, Lcom/android/systemui/mdm/MdmOverlayContainer$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/mdm/MdmOverlayContainer$1;-><init>(Lcom/android/systemui/mdm/MdmOverlayContainer;)V

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.statusbar.STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_3d

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/view/SemWindowManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start physicalDisplaySize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecLightRevealScrimHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v8, 0x0

    const/16 v12, 0x30

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "post init tasks have already been executed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final updateBubblesVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/data/model/StatusBarMode;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateDozingState()V
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "Dozing"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "CentralSurfaces#updateDozingState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v4, v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->disableLightRevealAnimation()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-eqz v4, :cond_5

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsFolded:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move v3, v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-interface {v0, p0, v3}, Lcom/android/systemui/shade/ShadeSurface;->setDozing(ZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateIsKeyguard(Z)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v9, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    move v5, v7

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-boolean v8, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/4 v10, 0x2

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v8, v8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq v8, v7, :cond_4

    if-ne v8, v10, :cond_5

    :cond_4
    move v8, v7

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    if-nez v13, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-nez v3, :cond_7

    if-nez v8, :cond_7

    move v13, v7

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    :cond_8
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    if-eqz v13, :cond_e

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v9, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_a

    :cond_9
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_a
    const-string v1, "CentralSurfaces#showKeyguard"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    if-eqz v1, :cond_b

    invoke-interface {v10}, Lcom/android/systemui/shade/ShadeSurface;->cancelAnimation()V

    invoke-interface {v10}, Lcom/android/systemui/shade/ShadeSurface;->resetAlpha()V

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    :cond_b
    const/16 v1, 0x3eb

    invoke-interface {v2, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->cancelMessages(I)V

    iget-boolean v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x1

    :goto_6
    iget v2, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v2, v1, :cond_d

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    invoke-interface {v1}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded$1()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViews(Z)V

    :cond_d
    invoke-virtual {v14}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "!shouldBeKeyguard mStatusBarStateController.isKeyguardRequested() "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    const-string v13, " keyguardForDozing "

    move-object/from16 v16, v7

    const-string v7, " wakeAndUnlocking "

    invoke-static {v9, v11, v13, v5, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v5, " isWakingAndOccluded "

    const-string v7, "CentralSurfaces"

    invoke-static {v9, v3, v5, v8, v7}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v3, v6, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_f

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    :cond_f
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isKeyguardHideDelayed()Z

    move-result v5

    if-eqz v5, :cond_10

    goto/16 :goto_5

    :cond_11
    :goto_7
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isOccludeAnimationPlaying()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "hideKeyguardImpl "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CentralSurfaces#hideKeyguard"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v3, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    iget v5, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v6, 0x0

    invoke-virtual {v12, v6, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    invoke-virtual {v14}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    :cond_12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_13

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_13

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "hideKeyguardImpl: mStatusBarStateController.leaveOpenOnKeyguardHide(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", !mShadeSurface.isCollapsing(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isCollapsing()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_13
    iget-boolean v1, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    if-nez v1, :cond_14

    sget-object v1, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_14
    iget-wide v6, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    iget-wide v8, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    add-long/2addr v6, v8

    iget-object v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logOnHideKeyguard$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logOnHideKeyguard$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "LockscreenShadeTransitionController"

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v4, v8, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v11, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    goto :goto_8

    :cond_15
    iget-boolean v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    goto :goto_8

    :cond_16
    const/4 v1, 0x0

    const/4 v4, 0x2

    if-eq v5, v4, :cond_17

    invoke-virtual {v15, v6, v7}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    :cond_17
    :goto_8
    iget-object v4, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_19

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_18

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_18
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_19
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->disableAnimationsDuringHide(IJ)V

    :cond_1a
    :goto_9
    const/16 v1, 0x3eb

    goto :goto_a

    :cond_1b
    invoke-interface {v10}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isCollapsing()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeController;->instantCollapseShade()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->closeRemoteInputs(Z)V

    goto :goto_9

    :goto_a
    invoke-interface {v2, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->cancelMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    invoke-interface/range {v16 .. v16}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-interface {v10}, Lcom/android/systemui/shade/ShadeSurface;->resetAlpha()V

    invoke-interface {v10}, Lcom/android/systemui/shade/ShadeSurface;->resetTranslation()V

    invoke-interface {v10}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViewGroupFade()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDozingState()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v3

    :goto_b
    return v2
.end method

.method public final updateLightRevealScrimVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/Flags;->lightRevealMigration()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getMaxLightRevealScrimAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setAlpha(F)V

    sget-boolean p0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-nez p0, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final updateNotificationPanelTouchState()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v7

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/lit8 v8, v0, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    xor-int/lit8 v10, v0, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/shade/ShadeLogger;->logUpdateNotificationPanelTouchState(ZZZZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0, v1}, Lcom/android/systemui/shade/ShadeSurface;->setTouchAndAnimationDisabled(Z)V

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    xor-int/lit8 v0, v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public final updatePanelExpansionForKeyguard()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->instantExpandShade()V

    :cond_2
    return-void
.end method

.method public final updateReportRejectedTouchVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateResources$1()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->updateResources$1()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources$1()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateResources$1()V

    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SecLightRevealScrimHelper"

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_5
    const-string v4, "getPositionCorrectionRatio screenSizeRatio="

    :try_start_0
    sget-boolean v5, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v6, v5

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget-object v7, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " physicalScreenSize.x="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " baseWidthPixels = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentWidthPixels = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPositionCorrectionRatio exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050349

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v4

    div-float/2addr v6, v5

    iput v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    int-to-double v5, v2

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v2, v4

    new-instance v4, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    iget v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    iget v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float v7, v2, v7

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float v8, v2, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;-><init>(FFFF)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    iget v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    iget v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v0, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    const-string/jumbo v7, "updateResources: secRevealCenterX="

    const-string v8, " secRevealCenterY="

    const-string v9, " currentDisplaySize.x="

    invoke-static {v7, v4, v8, v5, v9}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentDisplaySize.y="

    const-string v7, " powerKeyY="

    invoke-static {v4, v6, v5, v3, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " radius="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    iget v1, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    :goto_4
    return-void
.end method

.method public updateScrimController()V
    .locals 11

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const-string v0, "CentralSurfaces#updateScrimController"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v7, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v8, 0x5

    if-ne v6, v7, :cond_5

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v6

    if-nez v6, :cond_3

    iget v5, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v5, v8, :cond_4

    :cond_3
    :goto_2
    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v6

    if-nez v6, :cond_3

    iget v5, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v5, v8, :cond_4

    goto :goto_2

    :goto_3
    xor-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v5}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v5

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    if-eqz v5, :cond_9

    sget-object v1, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :cond_8
    :goto_4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->onFinished()V

    goto/16 :goto_9

    :cond_9
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v5, :cond_b

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    :goto_5
    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    goto/16 :goto_9

    :cond_b
    iget v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-ne v5, v7, :cond_c

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_9

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v7, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz v7, :cond_d

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    invoke-virtual {v6, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_9

    :cond_d
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    if-eqz v5, :cond_e

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    invoke-virtual {v6, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_9

    :cond_e
    const-class v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v7, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v7

    sget v9, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    sget v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    or-int/2addr v9, v10

    if-eq v7, v9, :cond_10

    sget v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    or-int/2addr v10, v9

    if-eq v7, v10, :cond_10

    sget v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

    or-int/2addr v9, v10

    if-ne v7, v9, :cond_f

    goto :goto_6

    :cond_f
    move v3, v2

    :cond_10
    :goto_6
    if-eqz v3, :cond_11

    iget-object v7, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v9, 0x6

    if-eq v7, v9, :cond_12

    iget-boolean v5, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    move v2, v3

    :cond_12
    :goto_7
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isAODScrimState "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :cond_13
    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-eqz v2, :cond_14

    if-nez v1, :cond_14

    goto :goto_8

    :cond_14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsIdleOnCommunal:Z

    if-eqz v2, :cond_16

    if-eqz v4, :cond_15

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_9

    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_9

    :cond_16
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_17

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_17

    if-nez v1, :cond_17

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_9

    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    invoke-virtual {v6, v8, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_9

    :cond_18
    :goto_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->onFinished()V

    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateTheme()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140610

    goto :goto_0

    :cond_0
    const v0, 0x7f140600

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    return-void
.end method

.method public final userActivity()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_ADJUST_REFRESH_RATE_USER_ACTIVITY:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_1
    :goto_0
    return-void
.end method
