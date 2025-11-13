.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 15
    .line 16
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 24
    .line 25
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 37
    .line 38
    iget-wide v4, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOperationId:J

    .line 39
    .line 40
    iget v6, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 41
    .line 42
    move-wide v2, v7

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 62
    .line 63
    invoke-virtual {p2, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 70
    .line 71
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 94
    .line 95
    const-string p1, ""

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method
