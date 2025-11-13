.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field public final mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

.field public final mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

.field public mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

.field public mIsValidCu:Z

.field public final mOnWifiUsabilityStatsListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

.field public mUsabilityStats:Landroid/net/wifi/WifiUsabilityStatsEntry;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mOnWifiUsabilityStatsListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "wifiscanner"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiScanner;

    iput-object p1, p2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iput-object p0, p2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string p2, "N/A"

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    iput p2, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    return-void
.end method

.method public static getBandString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    const-string p0, "60GHz"

    return-object p0

    :cond_1
    const-string p0, "6GHz"

    return-object p0

    :cond_2
    const-string p0, "5GHz"

    return-object p0

    :cond_3
    const-string p0, "2.4GHz"

    return-object p0
.end method


# virtual methods
.method public final getAffiliatedMloLinks()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getAssociatedMloLinks()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getBssid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p0, " [MLD]"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public final isLinkNotInUse(Landroid/net/wifi/MloLink;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getRssi()I

    move-result v0

    const/16 v1, -0x7f

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mUsabilityStats:Landroid/net/wifi/WifiUsabilityStatsEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkState(I)I

    move-result p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_1

    return v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No MLO linkid="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectionInfoRepo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mOnWifiUsabilityStatsListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mOnWifiUsabilityStatsListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$2;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    return-void
.end method

.method public final setKVRBitmask(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setKVRBitmask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionInfoRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    :goto_0
    return-void
.end method

.method public final updateConnectionInfo(Landroid/net/wifi/ScanResult;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    const-string v7, "ConnectionInfoRepo"

    if-eq v4, v5, :cond_2

    const/16 v5, 0x46

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7f

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BTM Transition bit is 19. updateBtmInfoFromExtendedCapsIe : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Neighbor Report Bit is 1. updateNeighborReportInfoFromRmIe : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v3, "BufferUnderflowException WLAN_AP_COUNTRY_CODE"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget p1, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    iput p1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->getNetworkInfofromLinkSpeed(II)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->scanResultInfoUpdated()V

    :cond_5
    return-void
.end method

.method public final updateTcpMonitorInfo()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", No Data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const-string v4, "\nPackage Name: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, ","

    const-string v9, "EMPTY"

    const/4 v10, 0x0

    const-string v11, "\n"

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v13, v1, v10

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    move v13, v12

    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_4

    aget-object v14, v1, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-ne v13, v12, :cond_0

    aget-object v15, v14, v10

    iput-object v15, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v14, v10

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v14, v2

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\nHost Name: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v14, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\nResult: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v14, v3

    const-string/jumbo v3, "true"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Blocked"

    goto :goto_2

    :cond_1
    aget-object v3, v14, v6

    const-string v15, "0"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Succeed"

    goto :goto_2

    :cond_2
    const-string v3, "Failed"

    :goto_2
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    array-length v3, v14

    const/16 v12, 0x9

    if-ne v3, v12, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    aget-object v12, v14, v12

    const-string v14, ")"

    invoke-static {v3, v12, v14}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x5

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, ", Retransmission: "

    const-string v13, ", Waiting: "

    const-string v14, "\nEstablished: "

    const-string v15, "\nSocket Healthy: "

    if-eqz v1, :cond_5

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v10

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v1, v1, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v10

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    :cond_5
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v10

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final updateWifiInfo()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x1

    const-string v2, "ConnectionInfoRepo"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLinkSpeed:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxLinkSpeed:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxSuccess:D

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxSuccess:D

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxRetries:D

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLost:D

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSecurityType:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->getNetworkInfofromLinkSpeed(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    const/4 v6, 0x5

    if-eq v0, v6, :cond_2

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    iput v4, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    iput v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    :cond_1
    iput v6, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    :cond_2
    iput v6, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    :cond_3
    iput v6, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    :goto_0
    iget v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mWifiGeneration:I

    iget-object v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAffiliatedMloLinks="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " getAssociatedMloLinks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v1

    :cond_4
    iput-boolean v4, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    :cond_5
    iget-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-boolean v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/MloLink;

    invoke-virtual {v6}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->getChannelUtilizationExtended()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Abnormal link ID="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getChannelUtilization()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    iget v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    iget-object p0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    iget v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rssi="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cu="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
