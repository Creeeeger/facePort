.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetectionError(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method public final onFingerprintDetected(IIZ)V
    .locals 3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    const-string v0, "onFingerprintDetected() triggered while waiting for cancellation, removing watchdog"

    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "KeyGuardUpdateMonitor#handlerBiometricDetected"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v1, "KeyGuardUpdateMonitor#onBiometricDetected"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricDetected(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFingerprintDetected(IZ)V

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {p1, p2, p3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFaceDetected(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
