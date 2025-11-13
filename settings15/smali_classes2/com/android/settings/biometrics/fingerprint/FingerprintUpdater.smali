.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public final enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, p4}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater$NotifyingEnrollmentCallback;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    const-string p0, "enroll_reason"

    const/4 p4, -0x1

    invoke-virtual {p6, p0, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p6, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    invoke-direct {p6}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    if-eq p0, p4, :cond_0

    invoke-virtual {p6, p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    :cond_0
    invoke-virtual {p6}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V

    return-void
.end method
