.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.super Lcom/android/systemui/keyguard/KeyguardViewMediator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field public static final USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;


# instance fields
.field public final mActivityTaskManagerService:Landroid/app/IActivityTaskManager;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAnimatingScreenOff:Z

.field public mAodShowing:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public mBootCompleted:Z

.field public mBootSendUserPresent:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$11;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommunalTransitionViewModel:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public mCustomMessage:Ljava/lang/CharSequence;

.field public final mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;

.field public mDelayedProfileShowingSequence:I

.field public mDelayedShowingSequence:I

.field public mDeviceInteractive:Z

.field public final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDozing:Z

.field public final mDreamOpenAnimationDuration:I

.field public mDreamOverlayShowing:Z

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mDreamViewModel:Ldagger/Lazy;

.field public final mExitAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;

.field public mExternallyEnabled:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field protected mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public mGoingToSleep:Z

.field public final mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

.field public mHideAnimation:Landroid/view/animation/Animation;

.field public final mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

.field public mHideAnimationRun:Z

.field public mHideAnimationRunning:Z

.field public mHiding:Z

.field public mInGestureNavigationMode:Z

.field public mInputRestricted:Z

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field public mKeyguardDonePending:Z

.field public final mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mKeyguardStateCallbacks:Ljava/util/ArrayList;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;

.field public final mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

.field public final mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

.field public final mKeyguardViewControllerLazy:Ldagger/Lazy;

.field public final mLastSimStates:Landroid/util/SparseIntArray;

.field public mLockLater:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSoundId:I

.field public mLockSoundStreamId:I

.field public mLockSoundVolume:F

.field public mLockSounds:Landroid/media/SoundPool;

.field public mNeedToReshowWhenReenabled:Z

.field public final mNotificationShadeDepthController:Ldagger/Lazy;

.field public final mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

.field final mOccludeAnimationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public mOccludeAnimationPlaying:Z

.field public final mOccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

.field public final mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

.field public mOccluded:Z

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$1;

.field public final mOrderUnlockAndWake:Z

.field public final mPM:Landroid/os/PowerManager;

.field public mPendingLock:Z

.field public mPendingPinLock:Z

.field public mPendingReset:Z

.field public final mPhoneState:Ljava/lang/String;

.field public final mPowerButtonY:F

.field public mPowerGestureIntercepted:Z

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimControllerLazy:Ldagger/Lazy;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mShadeController:Ldagger/Lazy;

.field public mShowHomeOverLockscreen:Z

.field public final mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mShowing:Z

.field public mShuttingDown:Z

.field public final mSimWasLocked:Landroid/util/SparseBooleanArray;

.field public final mStatusBarDisableToken:Landroid/os/IBinder;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mSurfaceBehindRemoteAnimationRequested:Z

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public mSystemReady:Z

.field public final mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mTrustedSoundId:I

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUiSoundsStreamType:I

.field public mUnlockSoundId:I

.field public mUnlockingAndWakingFromDream:Z

.field public final mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewMediatorCallback:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;

.field public mWaitingUntilKeyguardVisible:Z

.field public mWakeAndUnlocking:Z

.field public final mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

.field public mWallpaperSupportsAmbientMode:Z

.field public final mWindowCornerRadius:F


# direct methods
.method public static -$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "handleNotifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onFinishedGoingToSleep()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "handleNotifyWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onStartedWakingUp()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleReset(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->scheduleNonStrongBiometricIdleTimeout()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "isOccluded="

    const-string v1, "KeyguardViewMediator#handleSetOccluded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v1, "SafeUIKeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSetOccluded("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x8cf0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    if-eq v3, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-interface {v3, p1, v1}, Lcom/android/keyguard/KeyguardViewController;->setOccluded(ZZ)V

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    :cond_3
    const-string p2, "SafeUIKeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mPowerGestureIntercepted="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleShow(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Forcing setShowingLocked because one of these is true:mHiding="

    const-string v1, "KeyguardViewMediator#handleShow"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v3, "show_dismissible"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setForceIsDismissibleKeyguard(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemReady:Z

    if-nez v3, :cond_3

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "ignoring handleShow because system is not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    const-string v3, "SafeUIKeyguardViewMediator"

    const-string v4, "handleShow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setUnlockAndWakeFromDream(IZ)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setPendingLock(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_6

    const-string v4, "SafeUIKeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", keyguardGoingAway="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", which means we\'re showing in the middle of hiding."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardViewController;->show(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->userActivity()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->scheduleNonStrongBiometricIdleTimeout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_4
    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ldagger/Lazy;Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/app/IActivityTaskManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/flags/SystemPropertiesHelper;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;",
            "Landroid/content/Context;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/PowerManager;",
            "Landroid/app/trust/TrustManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/mediator/ScreenOnCoordinator;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitions;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/app/IActivityTaskManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p17

    move-object/from16 v3, p21

    move-object/from16 v4, p22

    invoke-direct/range {p0 .. p48}, Lcom/android/systemui/keyguard/KeyguardViewMediator;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ldagger/Lazy;Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/app/IActivityTaskManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/flags/SystemPropertiesHelper;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationPlaying:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    new-instance v7, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    new-instance v9, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;

    invoke-direct {v9, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;

    new-instance v9, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    invoke-direct {v9, p0, v8}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;

    new-instance v8, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v8}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    new-instance v8, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    new-instance v9, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;

    new-instance v9, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$11;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$11;

    new-instance v9, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11, v5}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v9, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    new-instance v10, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;

    invoke-direct {v10, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;

    new-instance v10, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    move-object v10, p2

    iput-object v10, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v11, p6

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v11, p25

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    move-object/from16 v11, p13

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    move-object/from16 v11, p15

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v11, p16

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v11, p38

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v11, p39

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    move-object/from16 v11, p40

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v11, p44

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string/jumbo v11, "statusbar"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v11, p19

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v11, p32

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShadeController:Ldagger/Lazy;

    move-object/from16 v11, p12

    invoke-virtual {v11, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    move-object/from16 v11, p27

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-object/from16 v11, p33

    iput-object v11, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    const-string/jumbo v11, "systemui"

    const-string v12, "nav_bar_handle_show_over_lockscreen"

    invoke-virtual {v2, v11, v12, v5}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowHomeOverLockscreen:Z

    new-instance v12, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda3;

    invoke-direct {v12, v9}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;)V

    invoke-virtual {v2, v11, v12, v7}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    move-object/from16 v7, p18

    invoke-virtual {v7, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInGestureNavigationMode:Z

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p46

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v2, p47

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object v3, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iput-object v4, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, v4

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v2, p30

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v2, p31

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    move-object/from16 v2, p35

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p36

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mActivityTaskManagerService:Landroid/app/IActivityTaskManager;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c92

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerButtonY:F

    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWindowCornerRadius:F

    sget-wide v2, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->DREAMING_ANIMATION_DURATION_MS:J

    long-to-int v2, v2

    iput v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOpenAnimationDuration:I

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v2, p42

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamViewModel:Ldagger/Lazy;

    move-object/from16 v2, p43

    iput-object v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCommunalTransitionViewModel:Ldagger/Lazy;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOrderUnlockAndWake:Z

    const-string/jumbo v2, "show keyguard"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(ZI)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Failed to call to IKeyguardStateCallback"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final adjustStatusBarLocked(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "SafeUIKeyguardViewMediator"

    if-nez v0, :cond_1

    const-string p0, "Could not get status bar manager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v4, "Failed to force clear flags"

    invoke-static {v1, v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const/high16 p2, 0x1000000

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowHomeOverLockscreen:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInGestureNavigationMode:Z

    if-nez v4, :cond_5

    :cond_4
    const/high16 v3, 0x200000

    :cond_5
    or-int/2addr v3, p2

    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v4

    if-eqz v4, :cond_7

    or-int/2addr v3, p2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "adjustStatusBarLocked: mShowing="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mOccluded="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSecure="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isSecure()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " force="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPowerGestureIntercepted="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " --> flags=0x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {p1, v3, p2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to set disable flags: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final cancelKeyguardExitAnimation()V
    .locals 1

    const-string v0, "KeyguardViewMediator#cancelKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v0, 0x13

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/16 p1, 0xb

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final doKeyguardForChildProfilesLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final doKeyguardLaterLocked(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x14000000

    invoke-static {v4, v5, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v1, v2, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setting alarm to turn off keyguard, seq = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    const-string v2, "SafeUIKeyguardViewMediator"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v10, v8

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedProfileShowingSequence:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v7, v10, v11, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x1

    const-string v3, "SafeUIKeyguardViewMediator"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "doKeyguard: not showing because externally disabled"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    if-nez v5, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_1

    const-string v0, "doKeyguard: we\'re still showing, but going away. Re-show the keyguard rather than short-circuiting and resetting."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "doKeyguard: not showing (instead, resetting) because it is already showing, we\'re interactive, we were not previously hiding. It should be safe to short-circuit here."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    return-void

    :cond_2
    const-string v0, "doKeyguard: already showing, but re-showing because we\'re interactive or were in the middle of hiding."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string p0, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz p1, :cond_8

    const-string v5, "force_show"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    if-nez v5, :cond_9

    const-string p0, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "doKeyguard: not showing in safe & swipe mode"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    return-void

    :cond_a
    const-string v0, "doKeyguard: showing the lock screen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->showKeyguard(Landroid/os/Bundle;)V

    return-void
.end method

.method public final doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "  mSystemReady: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mBootCompleted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mBootSendUserPresent: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mExternallyEnabled: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mShuttingDown: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mNeedToReshowWhenReenabled: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mShowing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mInputRestricted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mOccluded: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mDelayedShowingSequence: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mDeviceInteractive: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mGoingToSleep: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mHiding: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mDozing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mAodShowing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAodShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mWaitingUntilKeyguardVisible: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mKeyguardDonePending: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mHideAnimationRun: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingReset: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingLock: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  wakeAndUnlocking: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingPinLock: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPowerGestureIntercepted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V
    .locals 3

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "exitKeyguardAndFinishSurfaceBehindRemoteAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "skip onKeyguardExitRemoteAnimationFinished showKeyguard=false surfaceAnimationRunning=false surfaceAnimationRequested="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->blockPanelExpansionFromCurrentTouch()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishSurfaceBehindRemoteAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    sget-object p1, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->showKeyguard()V

    :cond_0
    return-void
.end method

.method public final getExitAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method public final getLockTimeout(I)J
    .locals 8

    const-string v0, "lock_screen_lock_after_timeout"

    const/16 v1, 0x1388

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v2, v0, v1, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "screen_off_timeout"

    const/16 v7, 0x7530

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    invoke-interface {p0, v6, v7, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    sub-long/2addr v2, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getOccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method public final getOccludeByDreamAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method public final getUnoccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method public final getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;

    return-object p0
.end method

.method public final handleHide()V
    .locals 6

    const-string v0, "KeyguardViewMediator#handleHide"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAodShowing:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "com.android.systemui:BOUNCER_DOZING"

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v2, "handleHide"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDreaming:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setUnlockAndWakeFromDream(IZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v0, :cond_5

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v3, "hiding keyguard before waking from dream"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->run()V

    goto :goto_1

    :cond_6
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v2, "Hiding keyguard while occluded. Just hide the keyguard view and exit."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->onKeyguardExitFinished()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayShowing:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOrderUnlockAndWake:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "com.android.systemui:UNLOCK_DREAMING"

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleKeyguardDone()V
    .locals 5

    const-string v0, "KeyguardViewMediator#handleKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v2, "SafeUIKeyguardViewMediator"

    const-string v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized(I)V

    const-string p0, "SafeUIKeyguardViewMediator"

    const-string v0, "Device is going to sleep, aborting keyguardDone"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setPendingLock(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->handleHide()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardDoneAnimationsFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hideSurfaceBehindKeyguard()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    :cond_0
    return-void
.end method

.method public final hideWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->readyForKeyguardDone()V

    return-void
.end method

.method public final isAnimatingBetweenKeyguardAndSurfaceBehind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    return p0
.end method

.method public final isAnySimPinSecure()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isHiding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    return p0
.end method

.method public final isInputRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

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

.method public final isOccludeAnimationPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationPlaying:Z

    return p0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public final isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

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

.method public final isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    return p0
.end method

.method public final isShowingAndNotOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchingActivityOverLockscreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitions;->setLaunchingActivityOverLockscreen(Z)V

    return-void
.end method

.method public final maybeHandlePendingLock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    move-result v0

    const-string v1, "SafeUIKeyguardViewMediator"

    if-eqz v0, :cond_0

    const-string p0, "#maybeHandlePendingLock: not handling because the screen off animation\'s shouldDelayKeyguardShow() returned true. This should be handled soon by #onStartedWakingUp, or by the end actions of the screen off animation."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_1

    const-string p0, "#maybeHandlePendingLock: not handling because the keyguard is going away. This should be handled shortly by StatusBar#finishKeyguardFadingAway."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "#maybeHandlePendingLock: handling pending lock; locking keyguard."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setPendingLock(Z)V

    :cond_2
    return-void
.end method

.method public final maybeSendUserPresentBroadcast()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->sendUserPresentBroadcast()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyTrustedChangedLocked(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SafeUIKeyguardViewMediator"

    const-string v3, "Failed to call notifyTrustedChangedLocked"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onBootCompleted()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->onDeviceBootCompleted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootCompleted:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->sendUserPresentBroadcast()V

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAnimatingScreenOff:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozing:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAnimatingScreenOff:Z

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    :cond_0
    return-void
.end method

.method public final onDreamingStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLaterLocked(J)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDreamingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFinishedGoingToSleep(IZ)V
    .locals 8

    const-string v0, "cameraGestureTriggered="

    const-string v1, "SafeUIKeyguardViewMediator"

    const-string v2, "onFinishedGoingToSleep("

    const-string v3, ")"

    invoke-static {p1, v2, v3, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mGoingToSleep:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldAnimateDozingChange()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAnimatingScreenOff:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    const-string v2, "SafeUIKeyguardViewMediator"

    const-string v3, "notifyFinishedGoingToSleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v7, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setPendingLock(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingReset:Z

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    const-string v3, "SafeUIKeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mPowerGestureIntercepted="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingReset:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->maybeHandlePendingLock()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockLater:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter p2

    :try_start_1
    iput-boolean v1, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p2, 0x140

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onKeyguardExitFinished()V
    .locals 2

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "onKeyguardExitFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockSoundId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->playSound(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 8

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "onStartedGoingToSleep("

    const-string v2, ")"

    invoke-static {p1, v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mGoingToSleep:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockLater:Z

    iget-boolean v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v6, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingReset:Z

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4

    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLaterLocked(J)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockLater:Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setPendingLock(Z)V

    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->playSound(I)V

    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v2, 0x141

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x156

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "notifyStartedGoingToSleep"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onStartedWakingUp(IZ)V
    .locals 8

    const-string v0, "onStartedWakingUp, seq = "

    const-string v1, "KeyguardViewMediator#onStartedWakingUp"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAnimatingScreenOff:Z

    iget v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    iget v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedProfileShowingSequence:I

    if-eqz p2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    :cond_1
    const-string p2, "SafeUIKeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPowerGestureIntercepted = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "SafeUIKeyguardViewMediator"

    const-string v0, "notifyStartedWakingUp"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->STARTED_WAKING_UP:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {p2, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSystemReady()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onWakeAndUnlocking(Z)V
    .locals 1

    const-string v0, "KeyguardViewMediator#onWakeAndUnlocking"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setUnlockAndWakeFromDream(IZ)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->userActivity()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final playSound(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string v2, "lockscreen_sounds_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiSoundsStreamType:I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final registerCentralSurfaces$1(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/keyguard/KeyguardViewController;->registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    return-void
.end method

.method public final requestedShowSurfaceBehindKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    return p0
.end method

.method public final resetKeyguardDonePendingLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final resetStateLocked(Z)V
    .locals 2

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string/jumbo v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNonStrongBiometricIdleTimeout()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceClass3()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintClass3()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "scheduleNonStrongBiometricIdleTimeout: schedule an alarm for currentUser="

    const-string v2, "SafeUIKeyguardViewMediator"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->scheduleNonStrongBiometricIdleTimeout(I)V

    :cond_2
    return-void
.end method

.method public final sendUserPresentBroadcast()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBootSendUserPresent:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setBlursDisabledForAppLaunch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setBlursDisabledForAppLaunch(Z)V

    return-void
.end method

.method public final setCurrentUser(I)V
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sput p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozing:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAnimatingScreenOff:Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    :cond_3
    return-void
.end method

.method public final setKeyguardEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "setKeyguardEnabled("

    monitor-enter p0

    :try_start_0
    const-string v1, "SafeUIKeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "keyguardEnabled(false) overridden by user lockdown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->updateInputRestrictedLocked()V

    const-string p1, "KeyguardViewMediator#hideLocked"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "hideLocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz p1, :cond_3

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->updateInputRestrictedLocked()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->showKeyguard(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0x8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string/jumbo v0, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setOccluded(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOccluded("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SafeUIKeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardViewMediator#setOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v0, "setOccluded "

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final setPendingLock(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    const-wide/16 v0, 0x1000

    const-string p0, "pendingLock"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method public final setShowingLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    return-void
.end method

.method public final setShowingLocked(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDozing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    if-ne p1, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAodShowing:Z

    if-ne v0, v3, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAodShowing:Z

    if-eqz v4, :cond_5

    new-instance p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    invoke-static {p2}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->updateInputRestrictedLocked()V

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public final setUnlockAndWakeFromDream(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOrderUnlockAndWake:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "waking to unlock"

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected value: "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v2, "fulfilling existing request"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "showing keyguard"

    goto :goto_0

    :cond_5
    const-string v2, "hiding keyguard"

    :goto_0
    if-nez p2, :cond_6

    if-eq p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v1, :cond_7

    const-string p0, "Interrupting request to wake and unlock"

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    const-string p0, "Initiating request to wake and unlock"

    goto :goto_2

    :cond_8
    const-string p0, "Fulfilling request to wake and unlock"

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Updating waking and unlocking request to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". description:["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]. reason:["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SafeUIKeyguardViewMediator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setupLocked()V
    .locals 11

    const/4 v0, 0x0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$11;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;

    const/4 v9, 0x2

    const-string v7, "com.android.systemui.permission.SELF"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/android/systemui/Flags;->refactorGetCurrentUser()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    sget v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v4

    :try_start_0
    sput v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getExitAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    sget v4, Lcom/android/systemui/keyguard/KeyguardService;->$r8$clinit:I

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN_APPEAR_ANIMATION:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    :goto_3
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getOccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v8, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getOccludeByDreamAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v9, p0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->getUnoccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/keyguard/KeyguardTransitions;->register(Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    new-instance v4, Landroid/media/SoundPool$Builder;

    invoke-direct {v4}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v4

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v4, "lock_sound"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundId:I

    :cond_4
    const-string v5, "SafeUIKeyguardViewMediator"

    if-eqz v4, :cond_5

    iget v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_6

    :cond_5
    const-string v6, "failed to load lock sound from "

    invoke-static {v6, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v4, "unlock_sound"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockSoundId:I

    :cond_7
    if-eqz v4, :cond_8

    iget v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_9

    :cond_8
    const-string v6, "failed to load unlock sound from "

    invoke-static {v6, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v4, "trusted_sound"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustedSoundId:I

    :cond_a
    if-eqz v2, :cond_b

    iget v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustedSoundId:I

    if-nez v3, :cond_c

    :cond_b
    const-string v3, "failed to load trusted sound from "

    invoke-static {v3, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundVolume:F

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x10a007a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    check-cast v1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperSupportsAmbientMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->prepareSafeUIBouncer()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0
.end method

.method public final shouldWaitForProvisioning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isSecure()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showDismissibleKeyguard()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {v0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v0

    const-string v1, "SafeUIKeyguardViewMediator"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    const-string p0, "Device not provisioned, so ignore request to show keyguard."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "show_dismissible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->showKeyguard(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "fold grace period feature isn\'t enabled, but showKeyguard() method is being called"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final showKeyguard(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KeyguardViewMediator#showKeyguard acquiring mShowKeyguardWakeLock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string/jumbo v1, "showKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final showSurfaceBehindKeyguard()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mActivityTaskManagerService:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setupLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 14

    move-object v0, p0

    const-string v1, "KeyguardViewMediator#startKeyguardExitAnimation"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v13, 0x0

    move-object v3, v1

    move v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;I)V

    const/16 v2, 0xc

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final startKeyguardExitAnimation(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 10

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public final startKeyguardExitAnimation(JJ)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public final tryKeyguardDone()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryKeyguardDone: pending - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animRan - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animRunning - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    const-string v2, "SafeUIKeyguardViewMediator"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->handleKeyguardDone()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "tryKeyguardDone: starting pre-hide animation"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateInputRestrictedLocked()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInputRestricted:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInputRestricted:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    :try_start_0
    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "SafeUIKeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final userActivity()V
    .locals 3

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3

    const-string v0, "KeyguardViewMediator#verifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string/jumbo v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mExternallyEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->updateInputRestrictedLocked()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p1

    :try_start_7
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(true)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_2
    :try_start_a
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catch_3
    move-exception p1

    :try_start_b
    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method
