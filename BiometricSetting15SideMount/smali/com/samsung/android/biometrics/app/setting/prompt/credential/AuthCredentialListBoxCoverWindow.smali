.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxCoverWindow;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
    .locals 7

    .line 1
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxCoverGuiHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move v5, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;I)V

    .line 18
    .line 19
    .line 20
    return-object v6
.end method
