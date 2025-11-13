.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field private mEnrollReason:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$201(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf5

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    .line 39
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    return-void
.end method

.method public setEnrollReason(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    return-void
.end method

.method protected startEnrollment()V
    .locals 6

    .line 44
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    .line 46
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    if-nez v1, :cond_0

    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "Null hardware auth token for enroll"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 48
    sget v1, Lcom/android/settings/R$string;->fingerprint_intro_error_unknown:I

    .line 49
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V

    return-void
.end method
