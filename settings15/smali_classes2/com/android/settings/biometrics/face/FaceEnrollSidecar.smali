.class public Lcom/android/settings/biometrics/face/FaceEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDisabledFeatures:[I

.field public final mEnrollmentCallback:Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

.field public mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

.field public final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>([ILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e5

    return p0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceUpdater;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/face/FaceUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    return-void
.end method

.method public final startEnrollment()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    iget-object v4, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;

    iget-object v7, v0, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v1}, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/face/FaceUpdater;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v7, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;

    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v5}, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    const-string v0, "enroll_reason"

    const/4 v5, -0x1

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/hardware/face/FaceEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/face/FaceEnrollOptions$Builder;

    if-eq p0, v5, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/face/FaceEnrollOptions$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    move-result-object v9

    const/4 p0, 0x0

    const/4 v8, 0x0

    move-object v5, v7

    move-object v7, p0

    invoke-virtual/range {v1 .. v9}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    return-void
.end method
