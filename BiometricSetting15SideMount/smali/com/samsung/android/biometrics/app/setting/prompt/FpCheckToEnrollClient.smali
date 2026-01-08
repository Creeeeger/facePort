.class public final Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mHandleTimeout:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

.field public final mHandlerRetry:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

.field public mIsErrorOccurred:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandleTimeout:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandlerRetry:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onAuthenticationError(IILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mIsErrorOccurred:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationError(IILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationFailed(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->restartTimeout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationHelp(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->restartTimeout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->showBiometricName(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandlerRetry:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const-wide/16 v0, 0x1f4

    .line 19
    .line 20
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onNegativeButtonPressed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mIsErrorOccurred:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onNegativeButtonPressed()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final onUserCancel(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mIsErrorOccurred:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x5

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onUserCancel(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final restartTimeout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandleTimeout:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandleTimeout:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const-wide/32 v1, 0xea60

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->restartTimeout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandleTimeout:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->mHandlerRetry:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
