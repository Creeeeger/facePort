.class Lcom/samsung/android/settings/connection/GigaLteSettings$15;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 544
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 548
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 549
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V

    return-void
.end method
