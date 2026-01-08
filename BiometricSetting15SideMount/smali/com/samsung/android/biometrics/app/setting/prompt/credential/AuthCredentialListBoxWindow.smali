.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxWindow;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
    .locals 3

    .line 1
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxGuiHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ".Cr"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    return-object p1
.end method
