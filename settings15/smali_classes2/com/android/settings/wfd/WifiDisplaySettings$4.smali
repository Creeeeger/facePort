.class public final Lcom/android/settings/wfd/WifiDisplaySettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    iget p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(I)V

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    iget p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(I)V

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    if-eq p1, p2, :cond_2

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    const-string p2, "wifi_display_wps_config"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
