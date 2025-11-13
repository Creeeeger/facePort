.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    invoke-virtual {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logRetryAfterFpHwUnavailable(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintSensorProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthenticationAfterHwUnavailable:Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
