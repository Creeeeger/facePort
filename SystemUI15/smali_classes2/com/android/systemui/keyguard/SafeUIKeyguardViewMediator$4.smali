.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getBouncerPromptReason()I
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v5

    :goto_3
    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v7

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v0

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "sys.boot.reason.last"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "reboot,mainline_update"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x10

    return p0

    :cond_4
    return v5

    :cond_5
    if-eqz v4, :cond_6

    and-int/lit8 p0, v7, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x4

    if-eqz v4, :cond_7

    and-int/lit8 v5, v7, 0x20

    if-eqz v5, :cond_7

    return p0

    :cond_7
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    if-eqz v4, :cond_a

    and-int/lit8 v5, v7, 0x8

    if-nez v5, :cond_9

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 p0, 0x5

    return p0

    :cond_a
    and-int/lit16 v2, v7, 0x200

    if-eqz v2, :cond_b

    const/16 p0, 0x9

    return p0

    :cond_b
    if-eqz v3, :cond_c

    and-int/lit8 v2, v7, 0x4

    if-eqz v2, :cond_c

    return p0

    :cond_c
    if-eqz v3, :cond_d

    and-int/lit16 p0, v7, 0x100

    if-eqz p0, :cond_d

    const/16 p0, 0x8

    return p0

    :cond_d
    if-eqz v4, :cond_e

    and-int/lit8 p0, v7, 0x40

    if-eqz p0, :cond_e

    const/4 p0, 0x6

    return p0

    :cond_e
    const/4 p0, 0x7

    if-eqz v4, :cond_f

    and-int/lit16 v2, v7, 0x80

    if-eqz v2, :cond_f

    return p0

    :cond_f
    if-eqz v4, :cond_10

    if-nez v0, :cond_10

    return p0

    :cond_10
    return v1
.end method

.method public final isScreenOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    return p0
.end method

.method public final keyguardDone(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "keyguardDone"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method public final keyguardDoneDrawing()V
    .locals 1

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final keyguardDonePending(I)V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "keyguardDonePending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    const/16 p1, 0xd

    const-wide/16 v0, 0xbb8

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final keyguardGone()V
    .locals 4

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "keyguardGone"

    const-string v1, "SafeUIKeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startBiometricWatchdog()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "waking from dream after unlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setUnlockAndWakeFromDream(IZ)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "keyguard showing after keyguardGone, dismiss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    goto :goto_1

    :cond_0
    const-string v0, "keyguard gone, waking up from dream"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x11

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    const-string v3, "com.android.systemui:UNLOCK_DREAMING"

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onCancelClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final playTrustedSound()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustedSoundId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method public final readyForKeyguardDone()V
    .locals 1

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->tryKeyguardDone()V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final resetKeyguard()V
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    return-void
.end method

.method public final setCustomMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setNeedsInput(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->setNeedsInput(Z)V

    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->userActivity()V

    return-void
.end method
