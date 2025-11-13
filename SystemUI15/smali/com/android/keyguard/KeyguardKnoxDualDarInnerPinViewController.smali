.class public final Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;
.super Lcom/android/keyguard/KeyguardSecPinViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEntry:[B

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p18}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    move-object v1, p10

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final displayDefaultSecurityMessage()V
    .locals 4

    const-string v0, "KeyguardKnoxDualDarInnerPinViewController"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez v1, :cond_0

    const-string p0, "displayDefaultSecurityMessage mMessageAreaController is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "displayDefaultSecurityMessage( "

    const-string v3, " )"

    invoke-static {v2, p0, v3, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f130911

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    const-string v5, "KeyguardKnoxDualDarInnerPinViewController"

    invoke-static {v5, v4, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const-string p2, "onPasswordChecked"

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p2, v3}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    invoke-interface {p2, p1, v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    iget-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p2, v3, p1, v3, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v2, 0x72

    invoke-virtual {v0, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p4

    invoke-interface {p4, p1, p2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-lez p2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object p4, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_2
    int-to-long p1, p2

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p4, 0x7f130904

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_3

    const-string p4, " ("

    invoke-static {p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f110006

    invoke-virtual {p4, v2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, ")"

    invoke-static {p2, p1, p4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1, p2, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public final reset$1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->resetState()V

    :goto_0
    return-void
.end method

.method public final resetState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARCustomCrypto(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardKnoxDualDarInnerPinViewController"

    const-string v1, "DualDar at Do safe mode with custom crypto case"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->resetState()V

    :goto_0
    return-void
.end method

.method public final setOkButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final showPromptReason(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez v0, :cond_0

    const-string p0, "KeyguardKnoxDualDarInnerPinViewController"

    const-string p1, "showPromptReason mMessageAreaController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final verifyNDigitsPIN()V
    .locals 0

    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    const-string v1, "KeyguardKnoxDualDarInnerPinViewController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v5, 0x3

    if-gt v3, v5, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->onPasswordChecked(IIZZ)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
