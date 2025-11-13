.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field public static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field public static final USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;


# instance fields
.field public final mActivityTransitionAnimator:Ldagger/Lazy;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAnimatingScreenOff:Z

.field public mAodShowing:Z

.field public final mAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

.field public mBootCompleted:Z

.field public mBootSendUserPresent:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommunalTransitionViewModel:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public mCustomMessage:Ljava/lang/CharSequence;

.field public final mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

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

.field public final mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

.field public mExternallyEnabled:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field protected mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public mGoingToSleep:Z

.field public final mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

.field public final mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

.field public mHideAnimation:Landroid/view/animation/Animation;

.field public final mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

.field public mHideAnimationRun:Z

.field public mHideAnimationRunning:Z

.field public mHiding:Z

.field public mInGestureNavigationMode:Z

.field public mInputRestricted:Z

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field public mKeyguardDonePending:Z

.field public mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

.field public final mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mKeyguardStateCallbacks:Ljava/util/ArrayList;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

.field public final mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

.field public final mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

.field public final mKeyguardViewControllerLazy:Ldagger/Lazy;

.field public final mLastSimStates:Landroid/util/SparseIntArray;

.field public mLockLater:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSoundId:I

.field public mLockSounds:Landroid/media/SoundPool;

.field public mNeedToReshowWhenReenabled:Z

.field public final mNotificationShadeDepthController:Ldagger/Lazy;

.field public final mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

.field final mOccludeAnimationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public mOccludeAnimationPlaying:Z

.field public final mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

.field public mOccluded:Z

.field public mOccludingRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

.field public final mOrderUnlockAndWake:Z

.field public final mPM:Landroid/os/PowerManager;

.field public mPendingLock:Z

.field public mPendingPinLock:Z

.field public mPendingReset:Z

.field public mPhoneState:Ljava/lang/String;

.field public final mPowerButtonY:F

.field public mPowerGestureIntercepted:Z

.field public mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimControllerLazy:Ldagger/Lazy;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mShadeController:Ldagger/Lazy;

.field public mShowCommunalWhenUnoccluding:Z

.field public mShowHomeOverLockscreen:Z

.field public final mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mShowing:Z

.field public mShuttingDown:Z

.field public final mSimWasLocked:Landroid/util/SparseBooleanArray;

.field public final mStatusBarDisableToken:Landroid/os/IBinder;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mSurfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public mSurfaceBehindRemoteAnimationRequested:Z

.field public mSurfaceBehindRemoteAnimationRunning:Z

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public mSystemReady:Z

.field public final mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mTrustedSoundId:I

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUnlockSoundId:I

.field public mUnlockingAndWakingFromDream:Z

.field public mUnoccludeFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

.field public mWaitingUntilKeyguardVisible:Z

.field public mWakeAndUnlocking:Z

.field public final mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

.field public mWallpaperSupportsAmbientMode:Z

.field public final mWindowCornerRadius:F


# direct methods
.method public static -$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

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

.method public static -$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

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

.method public static -$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

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

.method public static -$$Nest$mhandleReset(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "handleReset : hideBouncer=false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->scheduleNonStrongBiometricIdleTimeout$1()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZI)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "isOccluded="

    const-string v1, "KeyguardViewMediator#handleSetOccluded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v1, "KeyguardViewMediator"

    const-string v2, "handleSetOccluded(%b) seq=%d"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, v2, p3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    const v1, 0x8cf0

    invoke-static {v1, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x17

    invoke-virtual {p3, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    monitor-enter p0

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    if-eqz v2, :cond_0

    move v2, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v2, p1, :cond_5

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    invoke-interface {v2, p1, p3}, Lcom/android/keyguard/KeyguardViewController;->setOccluded(ZZ)V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    :cond_2
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/16 v8, 0x3c

    const/4 v4, 0x0

    move v3, p1

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    iget-object v1, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    if-eqz p3, :cond_5

    sget-boolean p3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    iget-object v1, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    if-eqz p3, :cond_3

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->hideAfterKeyguardInvisible()V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    :cond_5
    :goto_2
    const-string p2, "KeyguardViewMediator"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mPowerGestureIntercepted="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public static -$$Nest$mhandleShow(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
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
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setForceIsDismissibleKeyguard(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v3, :cond_3

    const-string p1, "KeyguardViewMediator"

    const-string v0, "ignoring handleShow because system is not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    const-string v3, "KeyguardViewMediator"

    const-string v4, "handleShow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v4, v2}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setUnlockAndWakeFromDream$1(IZ)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setShowingOptions(Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

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

    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", keyguardGoingAway="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", which means we\'re showing in the middle of hiding."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardViewController;->show(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked$1()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v0, v2}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v0, v2}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->scheduleNonStrongBiometricIdleTimeout$1()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_5
    return-void

    :goto_6
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

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

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

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ldagger/Lazy;Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/app/IActivityTaskManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/flags/SystemPropertiesHelper;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V
    .locals 67
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p14

    move-object/from16 v3, p17

    move-object/from16 v4, p21

    move-object/from16 v5, p22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v9, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v11, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v11, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    invoke-direct {v11, v0, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    new-instance v10, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v10}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v10, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowCommunalWhenUnoccluding:Z

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    invoke-direct {v11, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-direct {v11, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v0, v12, v13, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    new-instance v12, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    invoke-direct {v12, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v12, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    new-instance v12, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    iput-object v12, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    new-instance v12, Lcom/android/systemui/keyguard/ViewMediatorProvider;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/4 v13, 0x0

    invoke-direct {v15, v13}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/4 v14, 0x7

    invoke-direct {v13, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/16 v7, 0x8

    invoke-direct {v14, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/16 v6, 0x9

    invoke-direct {v7, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 p37, v14

    const/16 v14, 0xa

    invoke-direct {v6, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 p41, v10

    const/16 v10, 0xb

    invoke-direct {v14, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 p45, v14

    const/16 v14, 0xc

    invoke-direct {v10, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/16 v5, 0xd

    invoke-direct {v14, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 p48, v14

    const/16 v14, 0xe

    invoke-direct {v5, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/16 v4, 0xf

    invoke-direct {v14, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 v16, v14

    const/4 v14, 0x1

    invoke-direct {v4, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 v65, v9

    const/4 v9, 0x2

    invoke-direct {v14, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 v17, v14

    const/4 v14, 0x3

    invoke-direct {v9, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 v66, v11

    const/4 v11, 0x4

    invoke-direct {v14, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    move-object/from16 v18, v14

    const/4 v14, 0x5

    invoke-direct {v11, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v19, v14

    const/4 v14, 0x1

    invoke-direct {v3, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    const/4 v2, 0x2

    invoke-direct {v14, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v20, v14

    const/4 v14, 0x3

    invoke-direct {v2, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    const/4 v1, 0x6

    invoke-direct {v14, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>(I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v35, v1

    move-object/from16 v21, v14

    const/4 v14, 0x4

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v36, v1

    const/4 v14, 0x5

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v37, v1

    const/4 v14, 0x6

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v38, v1

    const/4 v14, 0x7

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v39, v1

    const/16 v14, 0x8

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v40, v1

    const/16 v14, 0x9

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v41, v1

    const/16 v14, 0xa

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v42, v1

    const/16 v14, 0xb

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v43, v1

    const/16 v14, 0xc

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v44, v1

    const/16 v14, 0xd

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v45, v1

    const/16 v14, 0xe

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v46, v1

    const/16 v14, 0xf

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v47, v1

    const/16 v14, 0x10

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v48, v1

    const/16 v14, 0x11

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v49, v1

    const/16 v14, 0x12

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v50, v1

    const/16 v14, 0x13

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v51, v1

    const/16 v14, 0x14

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda41;

    move-object/from16 v52, v1

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda41;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v53, v1

    const/4 v14, 0x0

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v54, v1

    const/4 v14, 0x1

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v55, v1

    const/16 v14, 0x15

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v56, v1

    const/16 v14, 0x16

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v57, v1

    const/4 v14, 0x2

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v58, v1

    const/16 v14, 0x17

    invoke-direct {v1, v0, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;

    move-object/from16 v59, v1

    const/16 v14, 0x18

    invoke-direct {v1, v8, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v60, v1

    const/4 v8, 0x3

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v61, v1

    const/4 v8, 0x4

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v62, v1

    const/4 v8, 0x5

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v63, v1

    const/4 v8, 0x6

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;

    move-object/from16 v64, v1

    const/4 v8, 0x7

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda42;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    move-object/from16 v1, p37

    move-object/from16 v8, p45

    move-object/from16 v22, p48

    move-object/from16 v24, v16

    move-object/from16 v26, v17

    move-object/from16 v28, v18

    move-object/from16 v30, v19

    move-object/from16 v32, v20

    move-object/from16 v34, v21

    move-object v14, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    move-object/from16 v23, v5

    move-object/from16 v25, v4

    move-object/from16 v27, v9

    move-object/from16 v29, v11

    move-object/from16 v31, v3

    move-object/from16 v33, v2

    invoke-direct/range {v14 .. v64}, Lcom/android/systemui/keyguard/ViewMediatorProvider;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, p1

    iput-object v12, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v3, p38

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v3, p39

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    move-object/from16 v3, p40

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v3, p44

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v3, p32

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShadeController:Ldagger/Lazy;

    move-object/from16 v3, p12

    invoke-virtual {v3, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    move-object/from16 v3, p27

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-object/from16 v3, p33

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    const-string/jumbo v3, "systemui"

    const-string v4, "nav_bar_handle_show_over_lockscreen"

    move-object/from16 v5, p17

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda2;

    move-object/from16 v6, v66

    invoke-direct {v4, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$13;)V

    move-object/from16 v6, v65

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    move-object/from16 v4, p18

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v3, p46

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v3, p47

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    move-object/from16 v4, p41

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v3, p24

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v3, p28

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v3, p29

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v3, p30

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v3, p31

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    move-object/from16 v3, p34

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mActivityTransitionAnimator:Ldagger/Lazy;

    move-object/from16 v3, p35

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c92

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerButtonY:F

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v3

    iput v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWindowCornerRadius:F

    sget-wide v3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->DREAMING_ANIMATION_DURATION_MS:J

    long-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOpenAnimationDuration:I

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v3, p42

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamViewModel:Ldagger/Lazy;

    move-object/from16 v3, p43

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCommunalTransitionViewModel:Ldagger/Lazy;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11101f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOrderUnlockAndWake:Z

    const-string/jumbo v1, "show keyguard"

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public static initAlphaForAnimationTargets([Landroid/view/RemoteAnimationTarget;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(ZI)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

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
    const-string v0, "KeyguardViewMediator"

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

.method public final adjustStatusBarLocked$1(ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "KeyguardViewMediator"

    if-nez v0, :cond_1

    const-string p0, "Could not get status bar manager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v3, "Failed to force clear flags"

    invoke-static {v1, v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    const/high16 v7, 0x1000000

    if-nez v6, :cond_6

    const/high16 v8, 0x1200000

    if-nez p1, :cond_7

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_6

    if-eqz p2, :cond_7

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz v9, :cond_4

    check-cast v9, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-ne v9, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v8, v7

    goto :goto_1

    :cond_6
    move v8, v2

    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x50000

    or-int/2addr v8, v0

    :cond_8
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    const/16 v9, 0x10

    if-ne v0, v8, :cond_b

    const/high16 v0, 0x40000

    const/high16 v10, 0x10000

    const/high16 v11, 0x200000

    filled-new-array {v11, v7, v0, v10}, [I

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disabled1:I

    :goto_2
    const/4 v10, 0x4

    if-ge v2, v10, :cond_a

    aget v10, v0, v2

    and-int v11, v10, v8

    if-ne v11, v10, :cond_9

    and-int v11, v10, v7

    if-eq v11, v10, :cond_9

    invoke-static {v9}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v7, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "isValidDisableFlags 0x"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 0x"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v9}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "adjustStatusBarLocked: no need to update flags=0x"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / showHomeOverLock="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    :goto_3
    iput v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result v0

    invoke-static {v9}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v7, "adjustStatusBarLocked: goingAway="

    const-string v9, " showing="

    const-string v10, " occluded="

    invoke-static {v7, v9, v10, v6, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isSecure="

    const-string v9, " force="

    invoke-static {v5, p2, v7, v0, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p2, " showHomeOverLock="

    const-string v0, " gestureNaviMode="

    invoke-static {v5, p1, p2, v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " --> flags=0x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x515

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardViewController;->isLaunchEditMode()Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_c
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->token:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v8, p2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    const-string p1, "adjustStatusBarLocked - disable failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v1, p2, p1, p0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public cancelKeyguardExitAnimation()V
    .locals 1

    const-string v0, "KeyguardViewMediator#cancelKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v0, 0x13

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final createInteractionJankMonitorConf$1(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 2

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/16 p1, 0xb

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final doKeyguardLaterForChildProfilesLocked$1()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "knox_screen_off_timeout"

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    :goto_1
    int-to-long v3, v3

    iget-object v5, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x1

    if-lez v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const-wide/16 v11, -0x2

    if-eqz v9, :cond_4

    cmp-long v13, v3, v7

    if-lez v13, :cond_4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_5

    move-wide v3, v5

    goto :goto_3

    :cond_5
    cmp-long v5, v3, v7

    if-gtz v5, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    cmp-long v5, v3, v7

    if-eqz v5, :cond_7

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_7

    cmp-long v5, v3, v11

    if-eqz v5, :cond_7

    const-wide/16 v5, 0x1388

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getLastUserActivityTime(I)J

    move-result-wide v13

    sub-long/2addr v5, v13

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_4
    cmp-long v2, v3, v7

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "seq"

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/high16 v4, 0x14000000

    invoke-static {v3, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    cmp-long v2, v3, v11

    if-nez v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v2, v1, v10}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final doKeyguardLaterLocked$1(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string v2, "doKeyguardLaterLocked is already in process"

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockscreenDisabled()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "seq"

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x14000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "KeyguardViewMediator"

    const-string/jumbo v2, "setting alarm to turn off keyguard, seq = %s, timeout = %d"

    invoke-static {p2, v2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked$1()V

    if-eqz v1, :cond_2

    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    :cond_2
    return-void
.end method

.method public final doKeyguardLocked(Landroid/os/Bundle;Z)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const-string v3, "KeyguardViewMediator"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "doKeyguard: not showing because externally disabled"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    return v5

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v7, :cond_4

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v6, :cond_2

    const-string v0, "doKeyguard: we\'re still showing, but going away. Re-show the keyguard rather than short-circuiting and resetting."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "doKeyguard: not showing (instead, resetting) because it is already showing, we\'re interactive, we were not previously hiding. It should be safe to short-circuit here."

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "KeyguardExitEditVI"

    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setShowingOptions(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked$1(Z)V

    return v5

    :cond_4
    const-string v0, "doKeyguard: already showing, but re-showing because we\'re interactive or were in the middle of hiding."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v4

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v4

    :goto_2
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning$1()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string p0, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_9
    if-eqz p1, :cond_a

    const-string v7, "force_show"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v4

    goto :goto_3

    :cond_a
    move v7, v5

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    if-nez v7, :cond_b

    const-string p0, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b
    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardDisabled(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    iget-object p0, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    const/4 p1, 0x0

    if-eqz p0, :cond_d

    goto :goto_4

    :cond_d
    move-object p0, p1

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setShowingLocked:Lkotlin/jvm/functions/Function2;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p2, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    const-string p0, "hideLocked by disabled keyguard"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object p0, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_e

    move-object p1, p0

    :cond_e
    iget-object p0, p1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hideLocked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_5
    return v5

    :cond_f
    if-eqz p2, :cond_10

    return v4

    :cond_10
    invoke-interface {v6, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setUnlockingKeyguard(Z)V

    const-string p2, "doKeyguard: showing the lock screen"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showKeyguard$1(Landroid/os/Bundle;)V

    return v4
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "  mSystemReady: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mBootCompleted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mBootSendUserPresent: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mExternallyEnabled: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mShuttingDown: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mNeedToReshowWhenReenabled: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mShowing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mInputRestricted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mOccluded: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mDelayedShowingSequence: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mDeviceInteractive: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mGoingToSleep: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mHiding: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mDozing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mAodShowing: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mWaitingUntilKeyguardVisible: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mKeyguardDonePending: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mHideAnimationRun: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingReset: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingLock: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  wakeAndUnlocking: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPendingPinLock: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mPowerGestureIntercepted: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onKeyguardExitRemoteAnimationFinished surfBehindRemoteAniRun=%b surfBehindRemoteAniReq=%b showKeyguard=%b"

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "skip onKeyguardExitRemoteAnimationFinished showKeyguard=false surfaceAnimationRunning="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " surfaceAnimationRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->blockPanelExpansionFromCurrentTouch()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->setImmediate(Z)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->setImmediate(Z)V

    return-void
.end method

.method public finishSurfaceBehindRemoteAnimation(Z)V
    .locals 7

    const-string v0, "IRemoteAnimationFinishedCallback#onAnimationFinished"

    const-string v1, "KeyguardUnlock"

    const-string v2, "Surface behind remote animation callback failed, and it\'s probably ok: "

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v3, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    sget-object p1, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->showKeyguard()V

    :cond_1
    return-void
.end method

.method public getExitAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->exitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    return-object v0
.end method

.method public final getLockTimeout$1(I)J
    .locals 8

    const-string v0, "lock_screen_lock_after_timeout"

    const/16 v1, 0x1388

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v2, v0, v1, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    :goto_0
    if-ltz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "KeyguardViewMediator"

    const-string v5, "mdmDelay=%d, lockAfterTimeout=%d"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "screen_off_timeout"

    const/16 v7, 0x7530

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

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

    :goto_1
    return-wide v0
.end method

.method public getOccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->occludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v1
.end method

.method public getOccludeByDreamAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method public getUnoccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unoccluedAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    return-object v1
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    return-object p0
.end method

.method public final handleHide$1()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "KeyguardViewMediator#handleHide"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v3}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "com.android.systemui:BOUNCER_DOZING"

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v3, "handleHide"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda80;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda80;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda80;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KeyguardViewMediator"

    const-string v2, "handleHide: mWakeAndUnlocking set false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDreaming:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setUnlockAndWakeFromDream$1(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v0, :cond_9

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v0, :cond_8

    const-string v0, "KeyguardViewMediator"

    const-string v1, "hiding keyguard before waking from dream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->run()V

    goto :goto_4

    :cond_9
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Hiding keyguard while occluded. Just hide the keyguard view and exit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onKeyguardExitFinished$1()V

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayShowing:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOrderUnlockAndWake:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v1, "com.android.systemui:UNLOCK_DREAMING"

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_b
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleKeyguardDone$1()V
    .locals 4

    const-string v0, "KeyguardViewMediator#handleKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda63;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda63;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked$1()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning$1()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "Device is going to sleep, aborting keyguardDone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onDismissCancelled()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide$1()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardDoneAnimationsFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public hideSurfaceBehindKeyguard()V
    .locals 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "hideSurfaceBehindKeyguard"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public hideWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->readyForKeyguardDone()V

    return-void
.end method

.method public isAnimatingBetweenKeyguardAndSurfaceBehind()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    return p0
.end method

.method public isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

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

.method public isAnySimPinSecure()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

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

.method public isHiding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    return p0
.end method

.method public isInputRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

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

.method public isOccludeAnimationPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    return p0
.end method

.method public isSecure()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isSecure(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return p0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchingActivityOverLockscreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitions;->setLaunchingActivityOverLockscreen(Z)V

    return-void
.end method

.method public maybeHandlePendingLock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    move-result v0

    const-string v1, "KeyguardViewMediator"

    if-eqz v0, :cond_0

    const-string p0, "#maybeHandlePendingLock: not handling because the screen off animation\'s shouldDelayKeyguardShow() returned true. This should be handled soon by #onStartedWakingUp, or by the end actions of the screen off animation."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

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

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    :cond_2
    return-void
.end method

.method public final maybeSendUserPresentBroadcast$1()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardDisabledBySettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast$1()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning$1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final notifyTrustedChangedLocked$1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call notifyTrustedChangedLocked"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

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

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast$1()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v1, 0x4b1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    :cond_0
    return-void
.end method

.method public onDreamingStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout$1(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked$1(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

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

.method public onFinishedGoingToSleep(IZ)V
    .locals 8

    const-string v0, "cameraGestureTriggered="

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldAnimateDozingChange()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked$1()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    const-string v2, "KeyguardViewMediator"

    const-string v3, "notifyFinishedGoingToSleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v7, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mPowerGestureIntercepted="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

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
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked$1(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked$1()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public final onKeyguardExitFinished$1()V
    .locals 5

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKeyguardExitFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->playSound$2(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked$1()V

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast$1()V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->fromLockscreenTransitionInteractor:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$dismissKeyguard$$inlined$launch$default$1;

    const-string v3, "FromLockscreenTransitionInteractor#dismissKeyguard"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$dismissKeyguard$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {p1, v1}, Lcom/android/systemui/Rune;->runIf(ILjava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v8

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    move v7, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout$1(I)J

    move-result-wide v5

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/4 v1, 0x7

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;

    invoke-direct {v10, p0, v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;J)V

    move v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updatePendingLock(IJZILcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;)V

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->playSound$2(I)V

    :cond_4
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v2, 0x141

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x156

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStartedWakingUp(IZ)V
    .locals 10

    const-string v0, "onStartedWakingUp, seq = "

    const-string v1, "KeyguardViewMediator#onStartedWakingUp"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {p1, v2}, Lcom/android/systemui/Rune;->runIf(ILjava/util/function/Consumer;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->cancelLockWhenCoverIsOpened(Z)V

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    :cond_2
    const-string p2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPowerGestureIntercepted = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "KeyguardViewMediator"

    const-string v0, "notifyStartedWakingUp"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v0, v2}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->STARTED_WAKING_UP:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {p2, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, p1

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast$1()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSystemReady()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onWakeAndUnlocking(Z)V
    .locals 5

    const-string v0, "KeyguardViewMediator#onWakeAndUnlocking"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setUnlockAndWakeFromDream$1(IZ)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onWakeAndUnlocking"

    iget-object v4, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeMaskViewForOpticalFpSensor()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->onWakeAndUnlock()V

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone$1()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public registerCentralSurfaces$1(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLockIconView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewController;->registerLockIconContainer(Landroid/view/ViewGroup;)V

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

.method public requestedShowSurfaceBehindKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    return p0
.end method

.method public final resetKeyguardDonePendingLocked$1()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "resetKeyguardDonePendingLocked: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final resetStateLocked$1(Z)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNonStrongBiometricIdleTimeout$1()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

    const-string v2, "KeyguardViewMediator"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->scheduleNonStrongBiometricIdleTimeout(I)V

    :cond_2
    return-void
.end method

.method public final sendUserPresentBroadcast$1()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlursDisabledForAppLaunch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setBlursDisabledForAppLaunch(Z)V

    return-void
.end method

.method public setCurrentUser(I)V
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
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked$1(Z)V

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

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    :cond_3
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "setKeyguardEnabled("

    monitor-enter p0

    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "keyguardEnabled(false) overridden by user lockdown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string p1, "KeyguardViewMediator"

    const-string v0, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked$1()V

    const-string p1, "KeyguardViewMediator#hideLocked"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "KeyguardViewMediator"

    const-string v0, "hideLocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz p1, :cond_3

    const-string p1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked$1()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showKeyguard$1(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/16 v0, 0x8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "KeyguardViewMediator"

    const-string/jumbo v0, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
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
    const-string p1, "KeyguardViewMediator"

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

.method public setOccluded(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->occludedSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curIsOccluded:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPendingLock(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    const-wide/16 v0, 0x1000

    const-string p0, "pendingLock"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method public setShowingLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    return-void
.end method

.method public final setShowingLocked$1(ZZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

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
    if-ne p1, v3, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-ne v0, v5, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p2, v2

    :goto_4
    if-eq v3, p1, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    const-string/jumbo v5, "setShowingLocked: notifyDefaultDisplayCallbacks="

    const-string v6, " showing="

    invoke-static {v5, v6, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " aodShowing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    const-string v7, "KeyguardViewMediator"

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v4, :cond_6

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    invoke-static {v4}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked$1()V

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setLockScreenShownRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

    invoke-virtual {p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeCallbacks$1$1(Ljava/lang/Runnable;)V

    iput-boolean p1, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    iput-boolean v0, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    const-string v4, "LockShownDelay"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateActivityLockScreenState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " after 300ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->run()V

    :cond_8
    :goto_6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setShowingOptions(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSwitchingUser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public final setUnlockAndWakeFromDream$1(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOrderUnlockAndWake:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

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
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

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

    const-string p1, "KeyguardViewMediator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setWallpaperSupportsAmbientModeForFold(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWallpaperSupportsAmbientModeForFold: mWallpaperSupportsAmbientMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    const-string v2, " supportsAmbientMode="

    const-string v3, "KeyguardViewMediator"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWallpaperSupportsAmbientMode$2(Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    :cond_0
    return-void
.end method

.method public final setupLocked$1()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    const-string v8, "com.android.systemui.permission.SELF"

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/android/systemui/Flags;->refactorGetCurrentUser()V

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    sget v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v3

    :try_start_0
    sput v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v3, :cond_0

    sget-boolean v4, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->handler:Landroid/os/Handler;

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$1;-><init>(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelStateChangedListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v11, 0x3c

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_3
    iget-object v12, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v13, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    const-string v3, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    const-string v4, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v14

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v18, "com.samsung.android.permission.LOCK_SECURITY_MONITOR"

    const/4 v15, 0x0

    const/16 v19, 0x1c

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    const-string v5, "com.sec.android.FindingLostPhonePlus.CANCEL"

    const-string v6, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v10, 0x3c

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->localReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.keyguard.CLEAR_LOCK"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_1
    new-instance v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v7, v5, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v8, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    :goto_0
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move v8, v4

    :goto_1
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countActions()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v1

    goto :goto_1

    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setupLocked$2()V

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    const-string v5, "KEYGUARD_UNLOCK"

    invoke-static {v3, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    if-eqz v3, :cond_7

    const/16 v5, 0xc1c

    invoke-virtual {v3, v5}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3, v5}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    iput-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_7
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;

    invoke-direct {v6, v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :goto_2
    new-instance v3, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-direct {v3}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    const-string v6, "WallpaperBackupRestoreReceiver"

    const-string v7, "registerBackupRestoreReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mBroadcastReceiver:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    const-string v8, "android.permission.SET_WALLPAPER"

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    if-eqz v3, :cond_9

    iget-object v5, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v6, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v12, 0x3c

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_9
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    invoke-direct {v5, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-interface {v3, v5}, Lcom/android/systemui/keyguard/KeyguardSecUnlockAnimationController;->setCallback(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;)V

    iget-object v6, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.OMC_CHANGED"

    invoke-direct {v8, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v13, 0x3c

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v13}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :try_start_2
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move v2, v1

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning$1()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardDisabled(Z)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_a

    move v4, v1

    :cond_a
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    :goto_4
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getExitAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardService;->$r8$clinit:I

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v6, v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN_APPEAR_ANIMATION:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    :goto_5
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v7, v0, v3}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getOccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v8, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v8, v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getOccludeByDreamAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v9, v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getUnoccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/keyguard/KeyguardTransitions;->register(Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v3, "lock_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :cond_d
    if-eqz v3, :cond_e

    iget v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v4, :cond_f

    :cond_e
    const-string v4, "KeyguardViewMediator"

    const-string v5, "failed to load lock sound from "

    invoke-static {v5, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string/jumbo v3, "unlock_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    :cond_10
    if-eqz v3, :cond_11

    iget v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v4, :cond_12

    :cond_11
    const-string v4, "KeyguardViewMediator"

    const-string v5, "failed to load unlock sound from "

    invoke-static {v5, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v3, "trusted_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    :cond_13
    if-eqz v2, :cond_14

    iget v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v3, :cond_15

    :cond_14
    const-string v3, "KeyguardViewMediator"

    const-string v4, "failed to load trusted sound from "

    invoke-static {v4, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-static {v2, v1}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v2, 0x10a007a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    check-cast v2, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperSupportsAmbientMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void

    :goto_6
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v3

    throw v1
.end method

.method public final shouldWaitForProvisioning$1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showDismissibleKeyguard()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {v0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v0

    const-string v1, "KeyguardViewMediator"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showKeyguard$1(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "fold grace period feature isn\'t enabled, but showKeyguard() method is being called"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final showKeyguard$1(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KeyguardViewMediator#showKeyguard acquiring mShowKeyguardWakeLock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "showKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public showSurfaceBehindKeyguard()V
    .locals 3

    const-string/jumbo v0, "showSurfaceBehindKeyguard"

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardGoingAway(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    const-string p0, "Failed to report keyguardGoingAway"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked$1()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startKeyguardExitAnimation(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 10

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation$1(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation$1(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public final startKeyguardExitAnimation$1(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "KeyguardViewMediator#startKeyguardExitAnimation"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v12, 0x0

    move-object v2, v1

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;I)V

    const/16 v2, 0x3ec

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelHigh()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    const-string v3, "nonApp"

    const-string/jumbo v4, "wallpaper"

    const-string v5, "app"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [[Landroid/view/RemoteAnimationTarget;

    iget-object v6, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    aput-object v2, v5, v6

    move v2, v7

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v6, v5, v2

    if-eqz v6, :cond_6

    array-length v9, v6

    if-nez v9, :cond_1

    goto :goto_5

    :cond_1
    array-length v9, v6

    const/4 v10, -0x1

    move v11, v7

    :goto_1
    if-ge v11, v9, :cond_6

    aget-object v12, v6, v11

    add-int/2addr v10, v8

    if-eqz v12, :cond_5

    iget-object v13, v12, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v13, :cond_2

    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    aget-object v14, v3, v2

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v4, "/"

    invoke-static {v15, v4, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const-string v4, "none"

    :goto_3
    iget-object v12, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    move v12, v7

    :goto_4
    const-string v13, "exitAnimParam "

    const-string v15, "["

    const-string v7, "]="

    invoke-static {v10, v13, v14, v15, v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hasLeash="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_9
    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final tryKeyguardDone$1()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tryKeyguardDone: pending - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animRan - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " animRunning - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    const-string v3, "KeyguardViewMediator"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    const/4 v12, 0x2

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    const-wide/32 v9, 0xf4240

    div-long v8, v7, v9

    const-wide/16 v10, 0x1f40

    move v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    :cond_1
    if-eqz v1, :cond_d

    iget-object v1, v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v3, :cond_2

    sget v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_3

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v4, 0x3

    if-eq v1, v3, :cond_7

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const v3, 0x493e0

    add-int/2addr v1, v3

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v2, :cond_6

    if-eq v3, v12, :cond_5

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    :goto_2
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v3

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    goto :goto_2

    :cond_7
    move v1, v4

    :cond_8
    :goto_3
    if-le v1, v4, :cond_9

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v1, v3

    :cond_9
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v2, :cond_c

    if-eq v3, v12, :cond_b

    if-eq v3, v4, :cond_a

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_c
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    sget-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    const v2, 0x11170

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    sget-object v13, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/16 v16, 0x0

    const/16 v20, 0x2e

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-static/range {v13 .. v20}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone$1()V

    return-void

    :cond_d
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone$1()V

    goto :goto_5

    :cond_e
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    goto :goto_5

    :cond_f
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v1, :cond_10

    const-string/jumbo v1, "tryKeyguardDone: starting pre-hide animation"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_10
    :goto_5
    return-void
.end method

.method public final updateInputRestrictedLocked$1()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

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

    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 3

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3

    const-string v0, "KeyguardViewMediator#verifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning$1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

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
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

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
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked$1()V

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
    const-string v0, "KeyguardViewMediator"

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
    const-string v0, "KeyguardViewMediator"

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
