.class public final synthetic Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    iput p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsScanningDisabled:Z

    if-nez v2, :cond_1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v2, :cond_2

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    invoke-virtual {v1, v2, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    if-eqz v2, :cond_3

    sget v3, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$6;

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    iget-object v2, v1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sem_wifi_network_rating_scorer_enabled_labs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    iget-object v4, v1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v5, "WifiTracker.WifiWifiQoSScoreCache"

    if-nez v4, :cond_5

    const-string v4, "SemWifiManager: null"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedQoSProvider()Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_8

    iget-object v1, v1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    :goto_4
    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    move v0, v3

    :cond_8
    const-string v1, "Network Score Enabling Check "

    invoke-static {v1, v5, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleOnStart()V

    iput-boolean v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->unregisterReceiverAndCallback()V

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
