.class public final Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public enrollmentSteps:I

.field public remaining:I


# virtual methods
.method public final send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    invoke-interface {p1, v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    return-void
.end method
