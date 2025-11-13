.class public final synthetic Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object v4, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "<unknown ssid>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v1

    :cond_3
    iput-object v4, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    :goto_2
    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    new-array v2, v2, [Landroid/net/NetworkKey;

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_5
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->doInBackground(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
