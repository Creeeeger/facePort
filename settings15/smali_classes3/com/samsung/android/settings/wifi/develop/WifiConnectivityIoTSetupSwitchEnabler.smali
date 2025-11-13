.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public checkConnectionFailure:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;

.field public connectionStatusHandler:Landroid/os/Handler;

.field public lastConnectedBSSID:Ljava/lang/String;

.field public final mBroadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;

.field public final mContext:Landroidx/fragment/app/FragmentActivity;

.field public mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string/jumbo p1, "sem_wifi"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo p1, "wifi"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static getFrequencyBand(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x96c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9a8

    if-gt p0, v0, :cond_0

    const-string p0, "2.4 GHz"

    return-object p0

    :cond_0
    const/16 v0, 0x143c

    if-lt p0, v0, :cond_1

    const/16 v0, 0x16c1

    if-gt p0, v0, :cond_1

    const-string p0, "5 GHz"

    return-object p0

    :cond_1
    const/16 v0, 0x1743

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1bcb

    if-gt p0, v0, :cond_2

    const-string p0, "6 GHz"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method


# virtual methods
.method public final getFilteredScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, -0xc8

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v4, :cond_0

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v4, 0x96c

    if-lt v3, v4, :cond_0

    const/16 v4, 0x9a8

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v0, :cond_0

    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 p2, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setChecked(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChecked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityIoTSetupSwitchEnabler"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sec_wifi_iot_setup_enabled"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, " executeConnectionto24Ghzbssid() "

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isNCHOModeEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setNCHOModeEnabled(Z)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nchostatus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setRoamBand(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "setRoamBand failed"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFilteredScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, " sendReassociationFrequencyRequestFrame failed"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setNCHOModeEnabled(Z)Z

    const-string p1, "Resetting to 0 in setChecked connectionFailed case"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->checkConnectionFailure:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->connectionStatusHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->connectionStatusHandler:Landroid/os/Handler;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->connectionStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->checkConnectionFailure:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    return-void
.end method

.method public final updateSwitchState(Z)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFilteredScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFrequencyBand(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const-string v0, ""

    move v3, v2

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateSwitchState() - isWifiEnabled: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",  isConnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WifiConnectivityIoTSetupSwitchEnabler"

    invoke-static {v9, v8}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "sec_wifi_iot_setup_enabled"

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_3
    if-nez v5, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_4
    if-eqz v6, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_5
    const/4 v1, 0x3

    if-nez p1, :cond_9

    const-string p1, "2.4 GHz"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v7, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    :goto_3
    return-void

    :cond_7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Last connected bssid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " current connected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_9
    if-nez v7, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void
.end method
