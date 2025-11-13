.class public final Lcom/samsung/android/settings/connection/GigaLteSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3
    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "smart_bonding"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :goto_3
    return-void

    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_11
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_12
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_15
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_16
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_17
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_18
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_9
    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_1a
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "smart_bonding"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_1b
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_1c
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "smart_bonding"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_6

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_6

    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
