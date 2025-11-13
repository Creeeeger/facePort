.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
