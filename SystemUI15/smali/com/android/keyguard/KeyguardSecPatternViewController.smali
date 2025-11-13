.class public final Lcom/android/keyguard/KeyguardSecPatternViewController;
.super Lcom/android/keyguard/KeyguardPatternViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBottomView:Landroid/widget/LinearLayout;

.field public mBouncerShowing:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

.field public final mContainer:Landroid/widget/LinearLayout;

.field public mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public mCurrentOrientation:I

.field public mCurrentRotation:I

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

.field public final mEcaFlexContainer:Landroid/widget/LinearLayout;

.field public final mEcaView:Landroid/view/View;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public mGoingToSleep:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field public mIsNightModeOn:Z

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public mPromptReason:I

.field public mSecondsRemaining:I

.field public final mSecurityView:Landroid/widget/LinearLayout;

.field public final mSplitTouchView:Landroid/widget/LinearLayout;

.field public final mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 14

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/KeyguardPatternViewController;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    const/4 v1, -0x1

    iput v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    iput v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentOrientation:I

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    move-object/from16 v1, p10

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    move-object/from16 v1, p2

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p3

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a0bf1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a0702

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a02ce

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a05ad

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a05c0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    iget-object v1, v13, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_0
    iget-object v1, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPatternView;

    const v2, 0x7f0a04f7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v0, v13, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPatternView;

    const v1, 0x7f0a03fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final disableDevicePermanently$1()V
    .locals 2

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final displayDefaultSecurityMessage()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, "KeyguardSecPatternViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mMessageAreaController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-nez v3, :cond_7

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-static {v6}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPrompt(I)I

    move-result v6

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isShowEditModeRequest()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130895

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    const-string v7, " )"

    if-eqz v3, :cond_4

    iput v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "displayDefaultSecurityMessage - strongAuth ( "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    invoke-static {v3, v6, v7, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->showPromptReason(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "displayDefaultSecurityMessage( "

    invoke-static {v6, v3, v7, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_5
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f13087a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage$1(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage$1(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleAttemptLockout(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->shouldTipsPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v11, Lcom/android/keyguard/KeyguardSecPatternViewController$2;

    sub-long v2, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-wide/16 v4, 0x3e8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    const/4 v10, 0x1

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardSecPatternViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    iput-object v11, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    invoke-virtual {v11}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final isHintText$1()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onResume(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reset$1()V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iput-object v0, v1, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final reset$1()V
    .locals 11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_0

    cmp-long v0, v8, v3

    if-lez v0, :cond_0

    const-string v0, "reset() switch to inner deadline. deadline = "

    const-string v10, ", innerDeadline = "

    invoke-static {v0, v3, v4, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KeyguardSecPatternViewController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v8

    :cond_0
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    cmp-long v0, v3, v6

    if-lez v0, :cond_4

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification$1()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently$1()V

    :goto_0
    return-void
.end method

.method public final resetFor2StepVerification$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "reset() - 2 step verification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setSubSecurityMessage$1(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    const-string v3, ""

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    if-nez p1, :cond_0

    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :goto_0
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_1

    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardPatternViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public final showPromptReason(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, "KeyguardSecPatternViewController"

    if-nez v0, :cond_0

    const-string p0, "showPromptReason mMessageAreaController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v2

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    cmp-long v2, v9, v3

    if-lez v2, :cond_1

    const-string v2, "showPromptReason() switch to inner deadline. deadline = "

    const-string v5, ", innerDeadline = "

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v9

    :cond_1
    cmp-long v1, v3, v7

    if-lez v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, p1}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, p1, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v6, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->scrollTo(II)V

    goto :goto_0

    :cond_3
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
    invoke-virtual {v0, v3, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final startAppearAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v2, 0x3f35c28f    # 0.71f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v3, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v4, 0x3f333333    # 0.7f

    iput v4, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iput-object v0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput-boolean v5, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    const v2, 0x3e2e147b    # 0.17f

    invoke-static {v2, v2, v0, v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

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

.method public final updateLayout$2$1()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const v4, 0x7f0a03ff

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v6, 0x7f070597

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const v6, 0x7f0705a9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f0705a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x7f0705a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x7f0705a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v6, 0x7f0705a1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v3, 0x7f070493

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    goto/16 :goto_2

    :cond_7
    if-eqz v0, :cond_11

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v7

    const v8, 0x7f070595

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v9, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v10, 0x11

    if-eqz v9, :cond_a

    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const v11, 0x7f0705a4

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    sub-int/2addr v6, v12

    const v12, 0x7f070492

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    sub-int/2addr v6, v12

    mul-int/lit8 v12, v8, 0x2

    sub-int/2addr v6, v12

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v8, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    goto :goto_2

    :cond_11
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->shouldTipsPopup()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public final updateLayoutForAttemptRemainingBeforeWipe$1()V
    .locals 10

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    if-ltz v3, :cond_b

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    if-eqz v6, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f070493

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0705a1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_3
    add-int/2addr v8, v7

    goto :goto_4

    :cond_5
    const v7, 0x7f070492

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0705a0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10502c4

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v3, v8

    sub-int/2addr v3, v7

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v6, :cond_6

    const v3, 0x7f070595

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v5, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_8

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_b
    return-void
.end method

.method public final updatePortraitLayout()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v3, 0x7f0a03ff

    const v4, 0x7f0705a0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v9, 0x51

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v8, 0x7f0705a6

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v8, 0x7f0705a2

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v8

    const v9, 0x7f0705a4

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    if-ne v8, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v8

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v9, v8

    const v8, 0x10502c4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v9, v8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    const v8, 0x7f070492

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    sub-int/2addr v9, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_1
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const v9, 0x7f0705a8

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v9, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v9, v9, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_2

    :cond_5
    const v9, 0x7f070595

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_2
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v7, v9, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v9, -0x2

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v6, v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 3

    const-string v0, "KeyguardSecPatternViewController"

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateStyle theme color: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    instance-of v0, v0, Lcom/android/keyguard/SecLockPatternView;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x200

    invoke-virtual {p3, v0, v1}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result p3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    check-cast p0, Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(IJ)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "updateStyle: colors is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
