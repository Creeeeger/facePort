.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$22;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x134

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logDeviceProvisionedState(Z)V

    return-void
.end method
