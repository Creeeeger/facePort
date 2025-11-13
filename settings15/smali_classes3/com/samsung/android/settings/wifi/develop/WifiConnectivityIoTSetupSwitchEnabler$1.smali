.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received broadcast action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityIoTSetupSwitchEnabler"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "resultsUpdated"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFilteredScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    :cond_5
    :goto_0
    return-void
.end method
