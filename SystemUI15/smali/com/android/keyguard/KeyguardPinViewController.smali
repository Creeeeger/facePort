.class public Lcom/android/keyguard/KeyguardPinViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPinLength:J

.field public final mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

.field public final mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$VvMOc6PHZaDFyXh6Gn_vNe1a8ls(Lcom/android/keyguard/KeyguardPinViewController;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onDevicePostureChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardPINView;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/LiftToActivateListener;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p18

    invoke-direct/range {v0 .. v16}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    iput-boolean v2, v3, Lcom/android/keyguard/KeyguardPINView;->mIsSmallLockScreenLandscapeEnabled:Z

    const v4, 0x7f0a08e2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0347

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/NumPadButton;

    move-object/from16 v3, p16

    invoke-virtual {v3, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/android/keyguard/KeyguardPinViewController;->mPinLength:J

    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPinViewController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final onUserInput()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPinLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPinLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->ATTEMPT_UNLOCK_WITH_AUTO_CONFIRM_FEATURE:Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    const v1, 0x7f0a0243

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPINView;->onDevicePostureChanged(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewDetached()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/KeyguardPINView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    iget-object v0, v2, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    iget-object p0, v2, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_0

    :goto_1
    iget p0, v2, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v7, p0

    iget-object p0, v2, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v9, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v10, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda0;

    invoke-direct {v10, p1}, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    new-instance v11, Lcom/android/keyguard/KeyguardInputView$1;

    const/16 p0, 0x16

    invoke-direct {v11, v2, p0}, Lcom/android/keyguard/KeyguardInputView$1;-><init>(Lcom/android/keyguard/KeyguardInputView;I)V

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;Lcom/android/keyguard/KeyguardInputView$1;)V

    const/4 p0, 0x1

    return p0
.end method
