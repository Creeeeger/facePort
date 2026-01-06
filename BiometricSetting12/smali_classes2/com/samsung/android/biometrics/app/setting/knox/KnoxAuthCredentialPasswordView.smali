.class public Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;
.super Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
.source "KnoxAuthCredentialPasswordView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mNdigitsPinEnabled:I

.field private mPasswordField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private checkPasswordAndUnlock()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mCredentialType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :goto_0
    nop

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;)V

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onEditorAction(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$0$KnoxAuthCredentialPasswordView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onAttachedToWindow()V

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->setOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->setOrientation(I)V

    :goto_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mCredentialType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->setOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method protected onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mCredentialType:I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mErrorView:Landroid/widget/TextView;

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->checkPasswordAndUnlock()V

    return v0
.end method

.method protected onErrorTimeoutFinish()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mCredentialType:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onFinishInflate()V

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method setCredentialType(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setCredentialType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    const-string v3, "n_digits_pin_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->mNdigitsPinEnabled:I

    :cond_0
    return-void
.end method
