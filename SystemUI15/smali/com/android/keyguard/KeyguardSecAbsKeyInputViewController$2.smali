.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset$1()V

    :cond_0
    return-void
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleLandscapePINSecurityMessage(J)V

    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 5

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    if-ne p2, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    :cond_0
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p2, :cond_1

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->displayDefaultSecurityMessage()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const v0, 0x7f0705e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->displayDefaultSecurityMessage()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

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

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimulationFailToUnlock(I)V
    .locals 8

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

    const-string v6, "KeyguardSecAbsKeyInputViewController"

    invoke-static {v1, v2, v4, v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    const/4 v1, 0x2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v6, 0x8

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_2
    invoke-interface {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_3
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    :cond_5
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    :cond_1
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->initializeBottomContainerView()V

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
