.class public final Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
