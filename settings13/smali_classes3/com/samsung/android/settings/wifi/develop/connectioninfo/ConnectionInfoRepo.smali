.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;
.super Ljava/lang/Object;
.source "ConnectionInfoRepo.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;,
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;
    }
.end annotation


# instance fields
.field private final mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

.field mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

.field private mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

.field private mIsValidCu:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectionInfo(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsValidCu(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConnectedBssidScanResult(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateConnectedBssidScanResult([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTcpMonitorInfo(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    .line 89
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "sem_wifi"

    .line 105
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "connectivity"

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 107
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    .line 109
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 111
    new-instance p2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    .line 113
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    return-void
.end method

.method private clearLinkPropertiesInfo()V
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    return-void
.end method

.method private clearScanResultInfo()V
    .locals 1

    .line 422
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    return-void
.end method

.method private filterIpAddress(Ljava/net/InetAddress;)Z
    .locals 0

    .line 263
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p0

    if-nez p0, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setKVRBitmask(IZ)V
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKVRBitmask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionInfoRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 415
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    goto :goto_0

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    :goto_0
    return-void
.end method

.method private updateConnectedBssidScanResult([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    const-string v1, "ConnectionInfoRepo"

    if-nez v0, :cond_0

    const-string p0, "Failed to search mBssid on scan result - mBssid is null"

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 165
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    .line 166
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateScanResultInfo(Landroid/net/wifi/ScanResult;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    iget v0, v4, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->setchannelWidth(I)V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->getNetworkInfofromLinkSpeed(II)V

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p0, :cond_2

    .line 177
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->scanResultInfoUpdated()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    const-string p0, "ConnectionInfoRepo: No matched BSSID"

    .line 184
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateInfoFromApCountryCodeIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 372
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ConnectionInfoRepo"

    const-string p1, "BufferUnderflowException WLAN_AP_COUNTRY_CODE"

    .line 376
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateInfoFromEachIe(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 348
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateInfoFromExtendedCapsIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateInfoFromRmIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateInfoFromApCountryCodeIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateInfoFromExtendedCapsIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 407
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object p1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTM Transition bit is 19. updateBtmInfoFromExtendedCapsIe : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionInfoRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    .line 409
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    return-void
.end method

.method private updateInfoFromRmIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 391
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object p1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Neighbor Report Bit is 1. updateNeighborReportInfoFromRmIe : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionInfoRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 393
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    return-void
.end method

.method private updateLinkPropertiesInfo()V
    .locals 5

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->clearLinkPropertiesInfo()V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 226
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 227
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 228
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->filterIpAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    .line 235
    :cond_2
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 236
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 237
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->filterIpAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 238
    :cond_4
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_3

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    .line 243
    :cond_5
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 245
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_6
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method private updateScanResultInfo(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->clearScanResultInfo()V

    .line 336
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->setKVRBitmask(IZ)V

    .line 338
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateInfoFromEachIe(Ljava/util/List;)V

    return-void
.end method

.method private updateTcpMonitorAllSocketHistory()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "\n"

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 307
    aget-object v3, v0, v2

    const-string v4, "EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    aget-object v0, v0, v1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nSocket Healthy: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nEstablished: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Waiting: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Retransmission: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateTcpMonitorDnsHistory()V
    .locals 11

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "\n"

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 283
    aget-object v4, v0, v3

    const-string v5, "EMPTY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move v5, v4

    .line 284
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 285
    aget-object v6, v0, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-ne v5, v4, :cond_0

    .line 287
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    aget-object v8, v6, v3

    iput-object v8, v7, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v9, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    .line 291
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v9, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nPackage Name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nHost Name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nResult: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    .line 293
    aget-object v9, v6, v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Blocked"

    goto :goto_2

    :cond_1
    const/4 v9, 0x4

    .line 294
    aget-object v9, v6, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "Succeed"

    goto :goto_2

    :cond_2
    const-string v9, "Failed"

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    .line 295
    array-length v7, v6

    const/16 v8, 0x9

    if-ne v7, v8, :cond_3

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v9, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x8

    aget-object v6, v6, v9

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private updateTcpMonitorInfo()V
    .locals 6

    .line 268
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 269
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", No Data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorDnsHistory()V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorAllSocketHistory()V

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorSocketForegroundHistory()V

    return-void
.end method

.method private updateTcpMonitorSocketForegroundHistory()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "\n"

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 322
    aget-object v3, v0, v2

    const-string v4, "EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    aget-object v0, v0, v1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPackage Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nSocket Healthy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nEstablished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Waiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Retransmission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 468
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Not updated"

    .line 469
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "AP doesn\'t have Country code element"

    .line 471
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    .line 475
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "STA doesn\'t have Country code element"

    .line 476
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    .line 479
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSTA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCu()I
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    return p0
.end method

.method getCurrentSecurityTypeString()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSecurityType:I

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "OWE"

    goto :goto_0

    :pswitch_1
    const-string p0, "WPA3 SAE"

    goto :goto_0

    :pswitch_2
    const-string p0, "EAP"

    goto :goto_0

    :pswitch_3
    const-string p0, "PSK"

    goto :goto_0

    :pswitch_4
    const-string p0, "WEP"

    goto :goto_0

    :pswitch_5
    const-string p0, "OPEN"

    goto :goto_0

    :cond_0
    :pswitch_6
    const-string p0, "WPA3 Enterprise"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public getDns1()Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    return-object p0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    return-object p0
.end method

.method public getDnsResult()Ljava/lang/String;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    return-object p0
.end method

.method public getFrequency()I
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    return p0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    return-object p0
.end method

.method public getGeneration()I
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mWifiGeneration:I

    return p0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getKVRString()Ljava/lang/String;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, "Neighbor Report: Not updated\nBSS Transition: Not updated\n11R: Not updated"

    return-object p0

    :cond_0
    and-int/lit8 v0, v0, 0x1

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Neighbor Report: Enabled\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Neighbor Report: Disabled\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BSS Transition: Enabled\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 454
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BSS Transition: Disabled\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "11R: Enabled"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 460
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "11R: Disabled"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public getLinkSpeed()I
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mLinkSpeed:I

    return p0
.end method

.method public getModulation()Ljava/lang/String;
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mModulation:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkPrefixLength()Ljava/lang/String;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getRssi()I
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    return p0
.end method

.method public getRxSuccess()D
    .locals 2

    .line 531
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxSuccess:D

    return-wide v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public getTcpAllSocketsStatic()Ljava/lang/String;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    return-object p0
.end method

.method public getTcpForegroundSocketsStatic()Ljava/lang/String;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    return-object p0
.end method

.method public getTxLost()D
    .locals 2

    .line 535
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLost:D

    return-wide v0
.end method

.method public getTxRetries()D
    .locals 2

    .line 539
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxRetries:D

    return-wide v0
.end method

.method public getTxSuccess()D
    .locals 2

    .line 527
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxSuccess:D

    return-wide v0
.end method

.method public isConnected()Z
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    return p0
.end method

.method public isCuValid()Z
    .locals 0

    .line 559
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    return p0
.end method

.method public onPartialScanUpdated([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "ConnectionInfoRepo"

    const-string p1, "Failed to scan"

    .line 583
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 586
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 564
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    .line 566
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 567
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->startPolling()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->stopPolling()V

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    :cond_0
    return-void
.end method

.method public updateAllConnectionInfo()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateWifiInfo()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiPartialScanner:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->triggerPartialScan(I)V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateLinkPropertiesInfo()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateTcpMonitorInfo()V

    return-void
.end method

.method public updateWifiInfo()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getChannelUtilization()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mBssid:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mLinkSpeed:I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxSuccess:D

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxSuccess:D

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxRetries:D

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLost:D

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSecurityType:I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->getNetworkInfofromLinkSpeed(II)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->getGeneration(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mWifiGeneration:I

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoAnalyzer:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mProtocol:Ljava/lang/String;

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mModulation:Ljava/lang/String;

    :cond_1
    return-void
.end method
