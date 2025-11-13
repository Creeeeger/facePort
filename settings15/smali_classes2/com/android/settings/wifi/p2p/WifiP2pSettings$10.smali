.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isRunning:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersPreference:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v2, 0x0

    const-string v3, "-> "

    const/4 v4, 0x1

    const-string v5, "WifiP2pSettings"

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "show connected devices"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "I am GO"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput v0, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersPreference:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_3

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    goto/16 :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I am GC, my GO addr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersPreference:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_3

    :cond_4
    :goto_1
    const-string v1, "List of available peers"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    move v6, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersPreference:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget v6, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mConnectedDevices "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    invoke-static {v0, p0, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_4
    return-void
.end method
