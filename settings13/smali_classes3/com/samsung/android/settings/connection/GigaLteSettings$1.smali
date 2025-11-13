.class Lcom/samsung/android/settings/connection/GigaLteSettings$1;
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

    .line 290
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "smart_bonding"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 296
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 299
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 310
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 315
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V

    return-void
.end method
