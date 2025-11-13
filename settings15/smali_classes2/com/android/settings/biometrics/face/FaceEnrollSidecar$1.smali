.class public final Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;
.super Landroid/hardware/face/FaceManager$EnrollmentCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;-><init>(I)V

    iput p1, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    iput-object p2, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method
