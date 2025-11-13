.class Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
