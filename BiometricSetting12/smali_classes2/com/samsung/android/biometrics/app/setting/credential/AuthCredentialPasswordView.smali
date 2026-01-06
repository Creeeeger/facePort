.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;
.super Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;
.source "AuthCredentialPasswordView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_AuthCredentialPasswordView"


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnContinue:Landroid/widget/Button;

.field private mBtnPasswordShow:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mNdigitsPinEnabled:I

.field private mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private checkPasswordAndUnlock()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mCredentialType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->getText()Landroid/text/Editable;

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
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;)V

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;
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

.method private setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setUserId(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnCancel:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnContinue:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setPasswordView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mIsPasswordShown:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->setPasswordShown(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    const v2, 0x7f1000fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->onEditorAction(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$setListener$0$AuthCredentialPasswordView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x3eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005b

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->checkPasswordAndUnlock()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setPasswordView$1$AuthCredentialPasswordView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->getSelectionEnd()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mIsPasswordShown:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->setPasswordShown(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onAttachedToWindow()V

    const-string v0, "BSS_AuthCredentialPasswordView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnCancel:Landroid/widget/Button;

    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnContinue:Landroid/widget/Button;

    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mCredentialType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mErrorView:Landroid/widget/TextView;

    const v1, 0x7f100049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mErrorView:Landroid/widget/TextView;

    const v1, 0x7f100047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->setListener()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->setPasswordView()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->requestFocus()Z

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setSelection(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->scheduleShowSoftInput()V

    :goto_1
    return-void
.end method

.method protected onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    const-string v0, "BSS_AuthCredentialPasswordView"

    const-string v1, "onCredentialVerified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    const/4 v2, 0x1

    if-gtz p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnContinue:Landroid/widget/Button;

    if-gtz p2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

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
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->checkPasswordAndUnlock()V

    return v0
.end method

.method protected onErrorTimeoutFinish()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->scheduleShowSoftInput()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method setCredentialType(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setCredentialType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    const-string v3, "n_digits_pin_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mNdigitsPinEnabled:I

    :cond_0
    return-void
.end method

.method protected setPasswordShown(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mIsPasswordShown:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f080091

    const v2, 0x7f08008f

    goto :goto_0

    :cond_0
    const v0, 0x7f080092

    const v2, 0x7f080090

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060048

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    const v4, 0x7f1000f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mBtnPasswordShow:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->mContext:Landroid/content/Context;

    const v4, 0x7f1000fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
