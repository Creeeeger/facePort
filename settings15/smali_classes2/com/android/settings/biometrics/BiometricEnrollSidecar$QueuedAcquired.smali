.class public final Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final isAcquiredGood:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;->isAcquiredGood:Z

    return-void
.end method


# virtual methods
.method public final send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;->isAcquiredGood:Z

    invoke-interface {p1, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onAcquired(Z)V

    return-void
.end method
