.class public abstract Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sVerboseLogging:Z


# instance fields
.field public final mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

.field public final mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

.field public final mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

.field public final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field public mIsInitialized:Z

.field public final mLifecycleObserver:Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;

.field public final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMaxScanAgeMillis:J

.field public final mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public mNetworkScoringUiEnabled:Z

.field public final mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

.field public final mScanIntervalMillis:J

.field public final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field public final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mSharedConnectivityCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$7;

.field public final mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

.field public final mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

.field public final mTag:Ljava/lang/String;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiState:I

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x4

    iput v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    new-instance v11, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-direct {v11, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    new-instance v11, Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;

    invoke-direct {v11, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mLifecycleObserver:Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v12, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v12}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v12}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v12

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v12

    iput-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    new-instance v12, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v12, p0, v10}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    new-instance v12, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v12, p0, v13}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    new-instance v12, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-direct {v12, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    new-instance v12, Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    invoke-direct {v12, p0, v10}, Lcom/android/wifitrackerlib/BaseWifiTracker$5;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    new-instance v10, Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    invoke-direct {v10, p0, v13}, Lcom/android/wifitrackerlib/BaseWifiTracker$5;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    iput-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    const-class v10, Landroid/app/ActivityManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    iput-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-class v10, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-class v10, Landroid/net/ConnectivityDiagnosticsManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiTrackerInjector;->isSharedConnectivityFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    sget v10, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    const-class v10, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v10, Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    invoke-direct {v10, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$7;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    :cond_0
    iput-object v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iput-wide v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    iput-wide v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v10, Lcom/android/wifitrackerlib/ScanResultUpdater;

    add-long/2addr v6, v8

    move-object/from16 v8, p8

    invoke-direct {v10, v8, v6, v7, v3}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;JLandroid/content/Context;)V

    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    new-instance v1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    invoke-direct {v6, p0, v5}, Lcom/android/wifitrackerlib/BaseWifiTracker$8;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V

    invoke-direct {v1, v3, v6}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/BaseWifiTracker$8;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final getWifiState()I
    .locals 2

    iget v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    :cond_0
    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return p0
.end method

.method public handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 0

    return-void
.end method

.method public handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method public handleDefaultNetworkLost()V
    .locals 0

    return-void
.end method

.method public handleDefaultSubscriptionChanged(I)V
    .locals 0

    return-void
.end method

.method public handleHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 0

    return-void
.end method

.method public handleHotspotNetworksUpdated(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public handleKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 0

    return-void
.end method

.method public handleKnownNetworksUpdated(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public abstract handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
.end method

.method public abstract handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract handleNetworkLost(Landroid/net/Network;)V
.end method

.method public abstract handleNetworkStateChangedAction(Landroid/content/Intent;)V
.end method

.method public abstract handleOnStart()V
.end method

.method public handleQosScoreCacheUpdated()V
    .locals 0

    return-void
.end method

.method public handleRssiChangedAction()V
    .locals 0

    return-void
.end method

.method public handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleServiceConnected()V
    .locals 0

    return-void
.end method

.method public handleServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public handleWifiStateChangedAction()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 4

    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iput-boolean v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isBlockedUnSecureWifiAutoJoin:I

    return-void
.end method

.method public final onStop()V
    .locals 4

    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iput-boolean v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semNotifyScanStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final unregisterReceiverAndCallback()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    if-eqz v1, :cond_0

    sget v2, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v0, "onDestroyed: unregisterCallback failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
