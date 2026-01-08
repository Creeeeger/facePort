.class public final Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverClient;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxCoverWindow;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {p1, v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->init()V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialCoverWindow;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final createBiometricPromptWindow()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
