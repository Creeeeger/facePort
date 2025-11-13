.class public final Lcom/android/systemui/statusbar/connectivity/WifiSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public final mHasMobileDataFeature:Z

.field public final mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Landroid/os/Handler;)V
    .locals 8

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    sget-object p3, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object p4, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p7, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {v5, p0, p4}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p6, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mContext:Landroid/content/Context;

    iget-object v2, p6, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p6, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v4, p6, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p6, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mMainHandler:Landroid/os/Handler;

    move-object v0, p4

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p6, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object p7, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v0, 0x1

    invoke-virtual {p6, v0, p7, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    iget-object p6, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object p7, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Lcom/android/settingslib/wifi/WifiStatusTracker$3;

    invoke-virtual {p6, p7}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iget-object p6, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p7, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v0, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    iget-object v1, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p6, p7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object p6, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p4, p4, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    invoke-virtual {p6, p4, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V

    invoke-virtual {p5, p1, p2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method


# virtual methods
.method public final cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiState;-><init>()V

    return-object p0
.end method

.method public final copyWifiStates()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iput v2, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iput-object p0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method public final doInBackground(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "  - WiFi Network History ------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    const/16 v4, 0x20

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    add-int/lit8 v1, v1, 0x1f

    :goto_1
    iget v5, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    if-lt v1, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Previous WiFiNetwork("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v1, 0x1f

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dumpTableData(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getCurrentIconIdForCarrierWifi()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result p0

    const/4 v2, 0x1

    add-int/2addr p0, v2

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    xor-int/2addr v3, v2

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v4, :cond_0

    invoke-static {v1, p0, v3}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    const/4 v4, 0x0

    const v5, 0x7f1304ca

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    iget-object v8, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    if-nez v3, :cond_0

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/2addr v3, v7

    if-nez v3, :cond_12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget v10, v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v11, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v11, :cond_1

    iget-object v10, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_0

    :cond_1
    move-object/from16 v18, v10

    :goto_0
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    new-instance v12, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v5

    invoke-direct {v12, v7, v5, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget v5, v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    if-eqz v7, :cond_3

    move v14, v5

    goto :goto_2

    :cond_3
    move v14, v6

    :goto_2
    if-eqz v7, :cond_4

    new-instance v4, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v0

    invoke-direct {v4, v6, v0, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    move-object v13, v4

    move v15, v5

    goto :goto_3

    :cond_4
    move-object v13, v4

    move v15, v6

    :goto_3
    iget v0, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getControllerWithSubId(I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object/from16 v20, v0

    goto :goto_5

    :cond_5
    const-string v0, ""

    goto :goto_4

    :goto_5
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object v11, v0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v21, v2

    invoke-direct/range {v11 .. v23}, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    goto/16 :goto_b

    :cond_6
    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f050046

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v9, :cond_7

    iget v9, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-eq v9, v7, :cond_8

    :cond_7
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-nez v9, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v3, v7

    goto :goto_6

    :cond_9
    move v3, v6

    :goto_6
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v9, :cond_a

    iget-object v4, v8, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    :cond_a
    move-object v15, v4

    if-eqz v3, :cond_b

    iget-object v4, v8, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    if-eqz v4, :cond_b

    move v4, v7

    goto :goto_7

    :cond_b
    move v4, v6

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v10, :cond_c

    const-string v10, ","

    invoke-static {v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    :cond_c
    new-instance v11, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getCurrentIconId()I

    move-result v5

    invoke-direct {v11, v3, v5, v9}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    new-instance v12, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v0, :cond_d

    const v0, 0x7f080aa9

    goto :goto_8

    :cond_d
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v0, :cond_e

    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsIcons:[[I

    iget v5, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    aget-object v0, v0, v5

    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    aget v0, v0, v2

    goto :goto_8

    :cond_e
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsDiscState:I

    goto :goto_8

    :cond_f
    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsNullState:I

    :goto_8
    invoke-direct {v12, v3, v0, v9}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    iget-boolean v10, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v4, :cond_10

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    if-eqz v2, :cond_10

    move v13, v7

    goto :goto_9

    :cond_10
    move v13, v6

    :goto_9
    if-eqz v4, :cond_11

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    if-eqz v2, :cond_11

    move v14, v7

    goto :goto_a

    :cond_11
    move v14, v6

    :goto_a
    iget-boolean v2, v8, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    iget-object v3, v8, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iget v4, v8, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    move-object v9, v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;I)V

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    :cond_12
    :goto_b
    return-void
.end method

.method public setActivity(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    if-eq p1, v4, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
