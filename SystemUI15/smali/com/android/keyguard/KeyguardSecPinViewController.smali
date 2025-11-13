.class public Lcom/android/keyguard/KeyguardSecPinViewController;
.super Lcom/android/keyguard/KeyguardPinViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBottomView:Landroid/widget/LinearLayout;

.field public final mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinViewController$1;

.field public mCurrentOrientation:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsStrongAuthPopupAllowed:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mVerifyNDigitsPINRunnable:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p18}, Lcom/android/keyguard/KeyguardPinViewController;-><init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mCurrentOrientation:I

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinViewController$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mIsStrongAuthPopupAllowed:Z

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->afterTextChanged(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->verifyNDigitsPIN()V

    return-void
.end method

.method public displayDefaultSecurityMessage()V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, "KeyguardSecPinViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mMessageAreaController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v2, v2, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-nez v3, :cond_c

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-static {v5}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPrompt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isShowEditModeRequest()Z

    move-result v6

    const v7, 0x7f1309b4

    const v8, 0x7f1309b5

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130895

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v2, v4

    :goto_0
    const-string v6, " )"

    if-eqz v2, :cond_6

    iput v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "displayDefaultSecurityMessage - strongAuth ( "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-static {v2, v5, v6, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinViewController;->showPromptReason(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v5}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_7
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    const-string v5, "displayDefaultSecurityMessage( "

    invoke-static {v5, v2, v6, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3, v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_a

    const-string v2, ""

    invoke-virtual {v0, v2, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f13087a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final getDigitsPIN(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result p0

    return p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a05b0

    return p0
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinViewController;->onViewAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    iput-object p0, v0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    :cond_1
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinViewController;->onViewDetached()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    :cond_1
    return-void
.end method

.method public resetState()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->displayDefaultSecurityMessage()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetFor2StepVerification()V

    return-void
.end method

.method public setOkButtonEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinViewController;->getDigitsPIN(I)I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showPromptReason(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecPinViewController"

    const-string p1, "showPromptReason mMessageAreaController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_6

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v4, :cond_1

    const v4, 0x7f1309b5

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_0

    :cond_1
    const v4, 0x7f1309b4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, p1}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, p1, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v4, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->scrollTo(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mIsStrongAuthPopupAllowed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->updateMessageLayout()V

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mIsStrongAuthPopupAllowed:Z

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, v3, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final startAppearAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v1, 0x3f35c28f    # 0.71f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v3, 0x3f333333    # 0.7f

    iput v3, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput-boolean v4, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateMessageLayout()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mIsStrongAuthPopupAllowed:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v4, 0x7f070593

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0705b0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_2

    :cond_5
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_2
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz p0, :cond_8

    if-eqz v2, :cond_7

    const/4 v3, 0x4

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public verifyNDigitsPIN()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinViewController;->getDigitsPIN(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v3, v2, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v4, v3, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    const-string v4, "KeyguardSecPinViewController"

    const-string/jumbo v5, "verifyPassword by N digits pin option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v3, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
