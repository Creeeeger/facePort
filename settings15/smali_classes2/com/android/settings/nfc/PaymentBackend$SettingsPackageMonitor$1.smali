.class public final Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;->this$1:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;->this$1:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    return-void
.end method
