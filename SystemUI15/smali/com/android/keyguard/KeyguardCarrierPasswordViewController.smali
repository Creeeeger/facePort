.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field public mFailedAttempts:I

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public final mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public final mShowImeAtScreenOn:Z

.field public final mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;


# direct methods
.method public static $r8$lambda$-goCXBIlA97VX0btFJtY2f5PTY8(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const-string v0, "check result : "

    const-string v1, "KeyguardCarrierPasswordView"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x1000020

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130883

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 16

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

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    const/4 v0, 0x0

    iput v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    const/4 v0, -0x1

    iput v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    move-object/from16 v0, p7

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v0, p14

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    iget-object v0, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const v1, 0x7f0a08c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    iget-object v0, v15, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const v1, 0x7f0a08c9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v15, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;JJ)V

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, p1

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->verifyPasswordAndUnlock()V

    return v0
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final onResume(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset$1()V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset$1()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final reset$1()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final resetState()V
    .locals 0

    return-void
.end method

.method public final updateLayout$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    const/4 v4, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
