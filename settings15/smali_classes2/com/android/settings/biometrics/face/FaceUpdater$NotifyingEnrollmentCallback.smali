.class public final Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;
.super Landroid/hardware/face/FaceManager$EnrollmentCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceManager$EnrollmentCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingEnrollmentCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->onBiometricsChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
