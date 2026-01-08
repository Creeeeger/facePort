.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public mBtnPasswordShow:Landroid/widget/ImageButton;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsKeyboardVisible:Z

.field public mIsPinType:Z

.field public mKeyboardVisibilityObserver:Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;

.field public mNdigitsPinEnabled:I

.field public mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 14
    .line 15
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->onEditorAction(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-lez p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final checkPasswordAndUnlock()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 30
    .line 31
    .line 32
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getEffectiveUserId()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;

    .line 46
    .line 47
    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    throw p0
.end method

.method public enterAlertMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enterAlertMode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_AuthCredentialPasswordView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enterAlertMode(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public exitAlertMode()V
    .locals 2

    .line 1
    const-string v0, "BSS_AuthCredentialPasswordView"

    .line 2
    .line 3
    const-string v1, "exitAlertMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->exitAlertMode()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->reactivatePasswordInputFieldAndShowKeyboard()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public getDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMaxScrollViewHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isScreenLandscape()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsKeyboardVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const v0, 0x3ecccccd    # 0.4f

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v0, 0x3f333333    # 0.7f

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return p0

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsKeyboardVisible:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isShowEmergencyCallButton()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v0, 0x3e19999a    # 0.15f

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const v0, 0x3e4ccccd    # 0.2f

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    .line 65
    .line 66
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    :goto_2
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_AuthCredentialPasswordView"

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a012e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 21
    .line 22
    const v0, 0x7f0a006e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageButton;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 37
    .line 38
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 39
    .line 40
    const/16 v4, 0x100

    .line 41
    .line 42
    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aput-object v3, v2, v4

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsPinType:Z

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 56
    .line 57
    const/16 v2, 0x12

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getEffectiveUserId()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;->setUserId(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsPasswordShown:Z

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->setPasswordShown(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 109
    .line 110
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    const v3, 0x7f10015b

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 123
    .line 124
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda3;

    .line 125
    .line 126
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;

    .line 133
    .line 134
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;-><init>(Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mKeyboardVisibilityObserver:Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;

    .line 143
    .line 144
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;)V

    .line 147
    .line 148
    .line 149
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 150
    .line 151
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 152
    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 161
    .line 162
    .line 163
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 164
    .line 165
    :goto_0
    return-void
.end method

.method public final onCancelButtonClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onContinueButtonClicked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->checkPasswordAndUnlock()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_AuthCredentialPasswordView"

    .line 5
    .line 6
    const-string v1, "onCredentialVerified"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-gtz p2, :cond_1

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v2, v0

    .line 43
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 47
    .line 48
    if-gtz p2, :cond_2

    .line 49
    .line 50
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 51
    .line 52
    if-gtz p0, :cond_2

    .line 53
    .line 54
    move v0, v1

    .line 55
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mKeyboardVisibilityObserver:Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 18
    .line 19
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mKeyboardVisibilityObserver:Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    move p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move p2, p1

    .line 16
    :goto_0
    if-eqz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_2

    .line 33
    .line 34
    move p3, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move p3, p1

    .line 37
    :goto_1
    if-nez p2, :cond_4

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    return p1

    .line 43
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->checkPasswordAndUnlock()V

    .line 44
    .line 45
    .line 46
    return v0
.end method

.method public onKeyboardVisibilityChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onKeyboardVisibilityChanged: isVisible = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "BSS_AuthCredentialPasswordView"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->updateScrollView()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onLockoutTimeoutFinish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onLockoutTimeoutFinish()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->reactivatePasswordInputFieldAndShowKeyboard()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onLockoutTimeoutStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public reactivatePasswordInputFieldAndShowKeyboard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setPasswordShown(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsPasswordShown:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const v0, 0x7f08008a

    .line 20
    .line 21
    .line 22
    const v1, 0x7f080088

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x7f08008b

    .line 27
    .line 28
    .line 29
    const v1, 0x7f080089

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 46
    .line 47
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const v1, 0x7f100159

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 66
    .line 67
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 75
    .line 76
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const v1, 0x7f10015b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    .line 89
    .line 90
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const v0, 0x7f060024

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsPinType:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getEffectiveUserId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "n_digits_pin_enabled"

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public updateScrollView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getScrollView()Landroid/widget/ScrollView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->getMaxScrollViewHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 19
    .line 20
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const v3, 0x3e4ccccd    # 0.2f

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->updateScrollViewDivider()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
