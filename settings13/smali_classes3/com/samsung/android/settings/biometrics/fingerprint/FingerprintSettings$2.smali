.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    invoke-super {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
