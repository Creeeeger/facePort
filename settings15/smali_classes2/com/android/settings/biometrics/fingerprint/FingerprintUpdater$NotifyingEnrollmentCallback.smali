.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method


# virtual methods
.method public final onAcquired(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onAcquired(Z)V

    return-void
.end method

.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->onBiometricsChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onUdfpsOverlayShown()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsOverlayShown()V

    return-void
.end method

.method public final onUdfpsPointerDown(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerDown(I)V

    return-void
.end method

.method public final onUdfpsPointerUp(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerUp(I)V

    return-void
.end method
