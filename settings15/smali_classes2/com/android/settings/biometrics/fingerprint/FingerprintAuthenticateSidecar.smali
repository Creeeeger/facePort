.class public Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAuthenticationCallback:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;

.field public mAuthenticationError:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

.field public mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationCallback:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c5

    return p0
.end method

.method public isCancelled()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    iget-object v3, v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->error:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->errorString:Ljava/lang/CharSequence;

    move-object v4, p1

    check-cast v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    iget-object v4, v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    :cond_1
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    return-void
.end method
