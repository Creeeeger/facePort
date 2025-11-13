.class public final Lcom/android/keyguard/KeyguardFMMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsVoiceCapacity:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public mOrientation:I

.field public final mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field public final mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static $r8$lambda$1VSAFBvQGcSRZrvKolaNJsKzoQE(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    const v1, 0x7f0a0464

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardFMMView;

    const v2, 0x7f0a0466

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_1
    :goto_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    const/4 v1, 0x0

    if-ne v0, v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x7f07148f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v8, 0x7f07052d

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v4

    if-eqz v7, :cond_3

    const v4, 0x7f070591

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    add-int/2addr v8, v4

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v5, v6

    :goto_4
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    const/16 v5, 0x31

    goto :goto_5

    :cond_5
    const/16 v5, 0x11

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f070595

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const v1, 0x7f07054a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method public static synthetic $r8$lambda$51-rHf8MBSE3E33VJ61TtShVzqs(Lcom/android/keyguard/KeyguardFMMViewController;I[BZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {p0, p1, p4, p3, v1}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IIZZ)V

    const/4 p0, 0x0

    invoke-static {p2, p0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSXyHOoqR37qpP3IKz4Ut8H24q8(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 4

    move-object v0, p0

    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardFMMViewController$1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardFMMViewController$2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const v3, 0x7f0a058e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const v3, 0x7f0a058f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const v3, 0x7f0a058d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const v3, 0x7f0a0702

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const v3, 0x7f0a0590

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardFMMView;

    const v2, 0x7f0a0563

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    return-void
.end method


# virtual methods
.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a0591

    return p0
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 6

    const-string v0, "onPasswordChecked "

    const-string v1, " / "

    invoke-static {v0, p2, v1, p3, v1}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardFMMView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    invoke-virtual {p4, p2, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    new-instance p4, Landroid/content/Intent;

    const-string v2, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {p4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x1000020

    invoke-virtual {p4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.permission.LOCK_SECURITY_MONITOR"

    invoke-virtual {v2, p4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p4, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    iget-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p2, v1, p1, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addFailedFMMUnlockAttempt(I)V

    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result p4

    const/4 v0, 0x5

    if-eq p4, v0, :cond_2

    const/16 v0, 0x9

    if-le p4, v0, :cond_3

    :cond_2
    sget-object p4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p4, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v0, 0x7530

    invoke-interface {p4, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    cmp-long p1, v4, v2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f130904

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardFMMView;

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final resetState()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f13099b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v0, :cond_3

    const v0, 0x7f1309b5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f1309b4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :goto_0
    return-void
.end method

.method public final setFMMInfo()V
    .locals 7

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v5, " "

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-le v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScrollbarFadingEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateDrawableTint()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06018d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06018c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateFMMLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    array-length v2, v0

    const/4 v4, 0x3

    if-gt v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IIZZ)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I[B)V

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
