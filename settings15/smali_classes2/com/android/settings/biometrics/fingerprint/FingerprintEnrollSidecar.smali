.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mEnrollReason:I

.field mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

.field public final mIntent:Landroid/content/Intent;

.field public final mMessageDisplayController:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

.field public final mMessageDisplayControllerFlag:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0025

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0026

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f050072

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f050071

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0024

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f050070

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mMessageDisplayControllerFlag:Z

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v3

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;-><init>(Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Ljava/time/Clock;IIZZI)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mMessageDisplayController:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf5

    return p0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    return-void
.end method

.method public final startEnrollment()V
    .locals 11

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    if-nez v0, :cond_0

    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "Null hardware auth token for enroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f140f9f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    const-string v1, "enroll_reason"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget v9, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    if-ne v9, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mMessageDisplayControllerFlag:Z

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    iget-object v6, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v7, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v8, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mMessageDisplayController:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    iget-object v6, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v7, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v8, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/content/Intent;)V

    :goto_1
    return-void
.end method
