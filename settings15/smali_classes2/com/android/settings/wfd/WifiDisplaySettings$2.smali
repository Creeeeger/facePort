.class public final Lcom/android/settings/wfd/WifiDisplaySettings$2;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 4

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Z)V

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
