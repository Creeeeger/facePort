.class public abstract Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBottomView:Landroid/widget/LinearLayout;

.field public mBouncerMessage:Ljava/lang/String;

.field public mBouncerShowing:Z

.field public mBouncerSubMessage:Ljava/lang/String;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

.field public mContainer:Landroid/widget/LinearLayout;

.field public mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public mCurrentOrientation:I

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

.field public final mDummyEcaSpace:Landroid/widget/Space;

.field public final mEcaFlexContainer:Landroid/widget/LinearLayout;

.field public mEcaView:Landroid/view/View;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mHandler:Landroid/os/Handler;

.field public final mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field public mImeBottom:I

.field public final mInputContainer:Landroid/widget/LinearLayout;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mIsFaceRunning:Z

.field public mIsImeShown:Z

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public final mMessageContainer:Landroid/widget/LinearLayout;

.field public final mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field public mPromptReason:I

.field public mSecondsRemaining:I

.field public final mSplitTouchView:Landroid/widget/LinearLayout;

.field public final mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

.field public final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecAbsKeyInputView;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    iput-object v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    const/4 v0, 0x0

    iput v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    iput-boolean v0, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    new-instance v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    iput v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCurrentOrientation:I

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a0bf1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a0703

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a0702

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a02ce

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a0539

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a08c9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a01a5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a05c0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a03d9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    iget-object v2, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v3, 0x7f0a04f7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v2, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    iget-object v2, v12, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMaxFontScale(F)V

    iget-object v2, v12, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMaxFontScale(F)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    move-object v1, p2

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p3

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v1

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object/from16 v1, p4

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p12

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const v2, 0x7f0a03fe

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    iget-object v1, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isPINSecurityView(I)Z
    .locals 1

    const v0, 0x7f0a05b0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPasswordView(I)Z
    .locals 1

    const v0, 0x7f0a05ac

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardSecAbsKeyInputViewController"

    const-string v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public displayDefaultSecurityMessage()V
    .locals 0

    return-void
.end method

.method public final getInDisplayFpContainerBottomMargin(Z)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    if-eqz p1, :cond_0

    const v2, 0x7f070598

    goto :goto_0

    :cond_0
    const v2, 0x7f0705aa

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz p0, :cond_1

    const v1, 0x7f0a03ff

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f070492

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sub-int/2addr v2, p0

    if-eqz p1, :cond_2

    const p0, 0x7f070599

    goto :goto_2

    :cond_2
    const p0, 0x7f0705ac

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v2, p0

    const p0, 0x10502c4

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v2, p0

    return v2
.end method

.method public getSecurityViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleAttemptLockout(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isForgotPasswordAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->shouldTipsPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v11, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;

    sub-long v2, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-wide/16 v4, 0x3e8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    const/4 v10, 0x1

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    iput-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    invoke-virtual {v11}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final handleLandscapePINSecurityMessage(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070593

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070533

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setTextSize(I)V

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public initializeBottomContainerView()V
    .locals 0

    return-void
.end method

.method public final isAllowedToAdjustSecurityView()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p0

    sget v1, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07148e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070591

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    const v2, 0x7f07052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v3

    const v3, 0x7f070593

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    const v5, 0x7f0704a7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v5

    const v4, 0x7f0705e6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    const v3, 0x7f0705c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v4

    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v4, v4, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getPINContainerHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    add-int/2addr v3, v0

    const v0, 0x7f0705aa

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v3

    const v3, 0x7f070492

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    const v0, 0x7f0705ac

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    add-int/2addr v2, p0

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isBiometricLockoutLandscape()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final isForgotPasswordAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result p0

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

.method public final isHiddenPasswordSubMessageVisibility()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050087

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHintText()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public final isLandscapeDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLandscapePolicyAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPasswordChecked(IIZZ)V
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v9, p2

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v0, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "KeyguardSecAbsKeyInputViewController"

    const-string v5, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v12, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p3, :cond_2

    const-string v5, "onPasswordChecked"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v11}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, p1, v10, v11}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v2, :cond_b

    iput-boolean v11, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v2, v11, p1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_4

    :cond_2
    const/16 v2, 0x72

    invoke-virtual {v3, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    const/4 v13, 0x2

    if-eqz p4, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, p1, v9, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    const/16 v2, 0x8

    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {v3, v10}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    goto :goto_3

    :cond_4
    if-lez v9, :cond_9

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPermanentLock()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v12, v10, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    goto :goto_1

    :cond_6
    invoke-interface {v12, p1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v12, v13, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "User %d has exceeded number of authentication failure limit"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    const-string v6, "KeyguardSecAbsKeyInputViewController"

    const/4 v2, 0x5

    const/4 v3, 0x1

    move v8, p1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    const-string v0, "knoxztinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v0, v2, v10, v3}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    :cond_9
    :goto_3
    int-to-long v2, v9

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    invoke-interface {v12, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v0

    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_a

    const-string v3, " ("

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f110006

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ")"

    invoke-static {v2, v0, v3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    iget-object v0, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0, v2, v10}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onResume(I)V

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset$1()V

    :cond_0
    return-void
.end method

.method public onUserInput()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    return-void
.end method

.method public onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    return-void
.end method

.method public reset$1()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_0

    cmp-long v4, v8, v2

    if-lez v4, :cond_0

    const-string v4, "reset() switch to inner deadline. deadline = "

    const-string v10, ", innerDeadline = "

    invoke-static {v4, v2, v3, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecAbsKeyInputViewController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    move-wide v2, v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isForgotPasswordAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    :goto_0
    return-void
.end method

.method public final resetFor2StepVerification()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    const-string v2, "reset() - 2 step verification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEmergencyButtonCallback(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    return-void
.end method

.method public final setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070595

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setSubSecurityMessage(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    const-string v5, ""

    const/16 v6, 0x8

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0, v5, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setFocusable(Z)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_3

    :cond_7
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v0, v5, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    if-nez v0, :cond_0

    const-string p0, "showPromptReason mMessageAreaController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result p1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    cmp-long p1, v6, v2

    if-lez p1, :cond_1

    const-string p1, "showPromptReason() switch to inner deadline. deadline = "

    const-string v0, ", innerDeadline = "

    invoke-static {p1, v2, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    :cond_1
    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final skipUpdateWhenCloseFolder()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateLayout$1()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    iget-object v4, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const v5, 0x7f0a03ff

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v2

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const v12, 0x7f070597

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    const/16 v12, 0x50

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const v7, 0x7f0705d3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move v9, v10

    :goto_0
    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_4
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_6

    const v2, 0x7f0705ab

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    const v2, 0x7f0705cb

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x7f0705d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v4, 0x7f0705c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v4, 0x7f0705d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v1, :cond_a

    const v1, 0x7f07059a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_a
    const v1, 0x7f0705ad

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v4, v6, v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v4, 0x7f070493

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_b
    iget-object v3, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v4, v10}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    :goto_3
    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    if-eqz v1, :cond_1c

    const/4 v11, 0x2

    if-ne v1, v11, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v11

    const v12, 0x7f070595

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v13

    invoke-static {v13}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v13

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_11

    const v15, 0x800053

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v14, :cond_11

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v15, 0x0

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v14, :cond_13

    invoke-virtual {v14, v9}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_13
    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const v15, 0x7f070598

    if-eqz v14, :cond_17

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_17

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v5, 0x11

    if-eqz v13, :cond_14

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v10}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_4

    :cond_14
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_4
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v13, :cond_15

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_5

    :cond_15
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v5, v5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v5, :cond_16

    const v5, 0x7f070550

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_16
    const v5, 0x7f0705aa

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_5
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v6, 0x7f0705ca

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070593

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v7, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v5, v7, v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    const v5, 0x7f0a03ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    if-eqz v13, :cond_19

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v10, v10, v10, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    invoke-virtual {v1, v2}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    invoke-virtual {v1, v10}, Landroid/widget/Space;->setVisibility(I)V

    :cond_19
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_1b
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleLandscapePINSecurityMessage(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    goto :goto_7

    :cond_1c
    :goto_6
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    :cond_1d
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->shouldTipsPopup()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method public final updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 12

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ltz v3, :cond_f

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v2

    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-eqz v3, :cond_5

    const v9, 0x7f070493

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0705a1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_3
    add-int/2addr v10, v9

    goto :goto_4

    :cond_5
    const v9, 0x7f070492

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0705a0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10502c4

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v4, v10

    sub-int/2addr v4, v9

    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v8, :cond_6

    const v4, 0x7f070595

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v7, v9, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-eqz v5, :cond_8

    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v3, :cond_b

    const v3, 0x7f07059a

    goto :goto_5

    :cond_b
    const v3, 0x7f070599

    :goto_5
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_7

    :cond_c
    if-eqz v3, :cond_d

    const v3, 0x7f0705ad

    goto :goto_6

    :cond_d
    const v3, 0x7f0705ac

    :goto_6
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_7
    invoke-virtual {v1, v7, v7, v7, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v6}, Landroid/widget/Space;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_f
    return-void
.end method

.method public final updatePortraitLayout(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v2

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v6, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v6, v6, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    const/16 v9, 0x50

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    if-eqz v9, :cond_11

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_11

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v12, 0x7f0705d0

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    move v14, v5

    goto :goto_1

    :cond_5
    move v14, v12

    :goto_1
    if-eqz v6, :cond_6

    move v15, v5

    goto :goto_2

    :cond_6
    move v15, v12

    :goto_2
    invoke-virtual {v13, v14, v5, v15, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v2, :cond_a

    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v6, :cond_7

    move v3, v5

    goto :goto_3

    :cond_7
    move v3, v12

    :goto_3
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    if-eqz v6, :cond_8

    move v12, v5

    :cond_8
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const v3, 0x7f0705ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-interface {v14}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ne v3, v8, :cond_9

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsImeShown:Z

    if-nez v3, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6

    :cond_9
    const v3, 0x7f070598

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_a
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-interface {v14}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ne v4, v8, :cond_b

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_f

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v3

    const v4, 0x7f07054e

    if-eqz v3, :cond_d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f07054f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    if-ne v3, v12, :cond_c

    goto :goto_4

    :cond_c
    move v4, v6

    :goto_4
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_5
    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sput v3, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    goto :goto_6

    :cond_e
    const v3, 0x7f070550

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_f
    const v3, 0x7f0705aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_6
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v2, :cond_13

    const v4, 0x7f070599

    move/from16 v6, p1

    goto :goto_7

    :cond_13
    const v4, 0x7f0a0591

    move/from16 v6, p1

    if-ne v6, v4, :cond_14

    const v4, 0x7f070548

    goto :goto_7

    :cond_14
    const v4, 0x7f0705ac

    :goto_7
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v1, :cond_15

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_15
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    const v4, 0x7f0a03ff

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    if-eqz v2, :cond_17

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_8

    :cond_16
    move/from16 v6, p1

    :cond_17
    :goto_8
    if-eqz v7, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070593

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setTextSize(I)V

    :cond_18
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    return-void
.end method

.method public verifyPasswordAndUnlock()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-eqz v4, :cond_4

    invoke-virtual {v6, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v7

    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v4, v7}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerLayerUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string v7, "Check password for DualDAR on DO"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v7, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableTouch()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    invoke-virtual {v6, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v7

    if-gt v7, v5, :cond_3

    const-string v2, "!@KeyguardAbsKeyInputView"

    const-string v3, "Password too short!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    invoke-virtual {p0, v6, v0, v0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    invoke-direct {v2, p0, v6, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v0, v4, v6, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    if-eqz v4, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v7

    if-eqz v7, :cond_7

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v8, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v8, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_8
    if-eqz v7, :cond_9

    const/16 v6, -0x26ab

    goto :goto_0

    :cond_9
    invoke-virtual {v6, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    :goto_0
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_UNPACK:Z

    if-eqz v8, :cond_a

    const-string v0, "KeyguardAbsKeyInputViewController"

    const-string v1, "just for UNPACK device. Always match success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v8

    if-gt v8, v5, :cond_b

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v6, v0, v0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_3

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v7, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    goto :goto_2

    :cond_c
    move-object v1, v4

    :goto_2
    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;

    invoke-direct {v2, p0, v6, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v0, v1, v6, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    :goto_3
    return-void
.end method
