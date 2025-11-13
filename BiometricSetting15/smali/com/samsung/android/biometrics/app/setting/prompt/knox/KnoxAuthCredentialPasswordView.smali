.class public Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mNdigitsPinEnabled:I

.field public mPasswordField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

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
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 14
    .line 15
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a00ec

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 39
    .line 40
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 45
    .line 46
    const/16 v1, 0x12

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 52
    .line 53
    new-array v1, v2, [Landroid/text/InputFilter;

    .line 54
    .line 55
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 56
    .line 57
    const/16 v4, 0x100

    .line 58
    .line 59
    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 60
    .line 61
    .line 62
    aput-object v2, v1, v3

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;I)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v1, 0x64

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a00ec

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 39
    .line 40
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 47
    .line 48
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 49
    .line 50
    move v5, p2

    .line 51
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V

    .line 52
    .line 53
    .line 54
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
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 44
    .line 45
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 46
    .line 47
    if-ne p1, v0, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 71
    .line 72
    .line 73
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_6
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 81
    .line 82
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 83
    .line 84
    iget p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 85
    .line 86
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1, p3, v0, v1}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :goto_5
    return v0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_6

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_6
    throw p0
.end method

.method public final onErrorTimeoutFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 12
    .line 13
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;ILandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a012e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$1;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    .line 11
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 33
    .line 34
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 35
    .line 36
    const-string v1, "n_digits_pin_enabled"

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method
