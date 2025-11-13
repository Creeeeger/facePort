.class public Lcom/android/keyguard/KeyguardSimPukViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPinText:Ljava/lang/String;

.field public mPukText:Ljava/lang/String;

.field public mRemainingAttempts:I

.field public mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field public mShowDefaultMessage:Z

.field public mSimImageView:Landroid/widget/ImageView;

.field public mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field public mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

.field public mSubId:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSimPukView;",
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
            "Landroid/telephony/TelephonyManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
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

    move-object/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$1;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSimPukViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    const v2, 0x7f0a05c2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public checkPin()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkPuk()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public confirmPin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f130d5f

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public final onResume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onResume(I)V

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    return-void
.end method

.method public final shouldLockout(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDefaultMessage()V
    .locals 9

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v4, v3

    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {p0, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result p0

    invoke-virtual {v4, v0, v1, p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010098

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    const v6, 0x7f1309f6

    const-string v7, ""

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v7

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const v6, 0x7f1309f7

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    :cond_5
    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_6

    const v0, 0x7f130a10

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-direct {v0, p0, v7, v7, v1}, Lcom/android/keyguard/KeyguardSimPukViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final updateMessageAreaVisibility()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    return-void
.end method

.method public updateSim()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130a1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukViewController$3;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public verifyPasswordAndUnlock()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->next()V

    return-void
.end method
