.class public final Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

.field public final synthetic this$0:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;-><init>(Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method
