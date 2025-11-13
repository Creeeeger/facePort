.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "BaseWifiTracker.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;,
        Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    }
.end annotation


# static fields
.field private static sVerboseLogging:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field protected mIsCellDefaultRoute:Z

.field private mIsInitialized:Z

.field protected mIsWifiDefaultRoute:Z

.field protected mIsWifiValidated:Z

.field private final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected mNetworkScoringUiEnabled:Z

.field protected mQoSScoredCache:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field protected final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:I

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$KJPZlmq0JXQGsMTWFboioRKP9bA(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cLLBECIxG7Wm3zKlK8uJO-AhXAY(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->lambda$onStop$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmScanner(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;)I
    .locals 0

    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    iput p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misPrimaryWifiNetwork(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isPrimaryWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyOnWifiStateChanged(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->notifyOnWifiStateChanged()V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p7

    move-wide/from16 v3, p9

    move-wide/from16 v5, p11

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x4

    .line 97
    iput v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    const/4 v7, 0x0

    .line 99
    iput-boolean v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    .line 102
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 174
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/16 v8, 0xf

    .line 175
    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 176
    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 177
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 179
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 218
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v7, p1

    .line 305
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    move-object v7, p2

    .line 306
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 307
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v7, p4

    .line 308
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 310
    const-class v8, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    move-object v8, p5

    .line 312
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v8, p6

    .line 313
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 314
    iput-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 315
    iput-wide v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 316
    iput-wide v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v8, p13

    .line 317
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    move-object/from16 v8, p14

    .line 318
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 320
    new-instance v8, Lcom/android/wifitrackerlib/ScanResultUpdater;

    add-long/2addr v3, v5

    move-object/from16 v5, p8

    invoke-direct {v8, v5, v3, v4}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 324
    new-instance v3, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;

    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-direct {v4, p0, v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V

    invoke-direct {v3, p3, v4}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;-><init>(Landroid/content/Context;Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V

    iput-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;

    .line 331
    invoke-virtual {v3}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->networkScoreEnablingCheck()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    .line 334
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner-IA;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 335
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->updateDefaultRouteInfo()V

    return-void
.end method

.method private isPrimaryWifiNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    .line 258
    instance-of v0, p1, Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    return p0

    .line 261
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->isPrimary(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 93
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method private synthetic lambda$onStart$0()V
    .locals 5

    .line 346
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->updateDefaultRouteInfo()V

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 363
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->networkScoreEnablingCheck()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleOnStart()V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    return-void
.end method

.method private synthetic lambda$onStop$1()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$mstop(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    .line 384
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 386
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private notifyOnWifiStateChanged()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz v0, :cond_0

    .line 572
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 2

    .line 411
    iget v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 415
    :cond_0
    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleDefaultRouteChanged()V
    .locals 0

    return-void
.end method

.method protected handleDefaultSubscriptionChanged(I)V
    .locals 0

    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    return-void
.end method

.method protected handleQosScoreCacheUpdated()V
    .locals 0

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 0

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    return-void
.end method

.method isInitialized()Z
    .locals 0

    .line 396
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    return p0
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semForceScan()V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    if-eqz p0, :cond_0

    .line 622
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$mpostScan(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    :cond_0
    return-void
.end method

.method public semNotifyScanStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected updateDefaultRouteInfo()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 266
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 268
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    .line 269
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    goto :goto_0

    .line 271
    :cond_0
    iput-boolean v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    .line 274
    :goto_0
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi is the default route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell is the default route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
