.class Lcom/android/keyguard/KeyguardSecPatternViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reset$1()V

    :cond_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    sget-object p1, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBouncerShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBouncerShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimulationFailToUnlock(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v2, v1, 0x5

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0x7530

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "onSimulationFailToUnlock failedAttempts : "

    const-string v5, " timeoutMs : "

    const-string v6, "KeyguardSecPatternViewController"

    invoke-static {v1, v2, v4, v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_2
    invoke-interface {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130903

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_4

    const-string v1, " ("

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f110006

    invoke-virtual {v1, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ")"

    invoke-static {v0, p1, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1, v0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    :cond_1
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
