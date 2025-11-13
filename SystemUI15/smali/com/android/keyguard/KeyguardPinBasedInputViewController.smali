.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

.field public final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

.field public final mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public static synthetic $r8$lambda$1BZ0HKp0hpgY_5GG7usgwHBArEI(Lcom/android/keyguard/KeyguardPinBasedInputViewController;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->doHapticKeyClick()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$feolW5yIFM195Ab6XdKKhqCfSos(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->doHapticKeyClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$oP84JnP5pIKR9G_QPByy_vW6qno(Lcom/android/keyguard/KeyguardPinBasedInputViewController;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardPinBasedInputView;",
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
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

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

    move-object/from16 v11, p13

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    move-object/from16 v0, p11

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    move-object/from16 v0, p13

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p16

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    iget-object v0, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, v15, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-void
.end method


# virtual methods
.method public getInitialMessageResId()I
    .locals 0

    const p0, 0x7f130829

    return p0
.end method

.method public onResume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onResume(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onViewAttached()V
    .locals 7

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPinEnhancedPrivacyEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iput-boolean v0, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    new-instance v5, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mUserActivityListener:Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    const v2, 0x7f0a0347

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    const v3, 0x7f0a0563

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    iget-object v0, v0, Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;->isAnyKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704ea

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onViewDetached()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method public final startErrorAnimation()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_0
    const/16 v7, 0x9

    if-gt v6, v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p0, v0

    move v6, p0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p0, v7, :cond_1

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v9, v6

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    sget-object v10, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Lcom/android/keyguard/KeyguardPinBasedInputView$$ExternalSyntheticLambda0;

    invoke-direct {v11, v7, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v11, 0x32

    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v11, v1, [F

    fill-array-data v11, :array_1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/keyguard/KeyguardPinBasedInputView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v12, 0x269

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v9, v7, v0

    aput-object v11, v7, v2

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x21

    add-int/2addr p0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
