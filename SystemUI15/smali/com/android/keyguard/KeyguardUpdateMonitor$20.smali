.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$20;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBiometricPromptDismissed()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricPromptShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    return-void
.end method

.method public final onBiometricPromptShown()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricPromptShowing:Z

    return-void
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v2, 0x15c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
