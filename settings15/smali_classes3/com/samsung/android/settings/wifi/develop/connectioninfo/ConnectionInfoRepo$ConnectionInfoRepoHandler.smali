.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    if-eq v0, v1, :cond_b

    if-eq v0, v4, :cond_9

    const-string v1, "ConnectionInfoRepo"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage undefined msg: msg.what = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiUsabilityStatsEntry;

    iput-object p0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mUsabilityStats:Landroid/net/wifi/WifiUsabilityStatsEntry;

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorInfo()V

    iget-object p1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->tcpMonitorInfoUpdated()V

    :cond_2
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Landroid/net/wifi/WifiScanner$ScanData;

    iget-object p1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string p0, "Failed to search mBssid on scan result - mBssid is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, p0, v3

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateConnectionInfo(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object p0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateConnectionInfo(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_6

    :cond_8
    const/4 p0, -0x1

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    const-string p0, "ConnectionInfoRepo: No matched BSSID"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateWifiInfo()V

    iget-object p1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->wifiInfoUpdated()V

    :cond_a
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    :cond_b
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_c

    iget-object p1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    :cond_c
    iput-boolean v3, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateWifiInfo()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/MloLink;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v1

    invoke-static {v6, v1}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    iget v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "trigger partial scan: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ConnectionInfo.WifiPartialScanner"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    iput v4, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    iput v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v4, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v6, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v7, v3, 0x1

    new-instance v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v8, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v8, v6, v3

    move v3, v7

    goto :goto_2

    :cond_f
    iput v2, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    iget-object p0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_3

    :cond_11
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_14
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    :cond_15
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    :cond_17
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorInfo()V

    iget-object p0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p0, :cond_18

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->allConnectionInfoUpdated()V

    :cond_18
    :goto_6
    return-void
.end method
