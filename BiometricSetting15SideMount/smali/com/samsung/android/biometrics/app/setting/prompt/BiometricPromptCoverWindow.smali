.class public Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverWindow;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
    .locals 7

    .line 1
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;

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

.method public final getBaseView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f0d0024

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
