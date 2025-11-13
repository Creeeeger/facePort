.class public final Lcom/android/settings/wifi/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "sem_wifi"

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "reason_code"

    const/16 v3, 0x2710

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "NETWORK_CONNECT_FAILED "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    const-string p0, "not manual connect or supported security "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget v0, p1, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p1, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    if-ge p2, v3, :cond_6

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v5, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eqz v3, :cond_2

    move v4, v3

    :cond_3
    :goto_0
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move p2, v4

    :goto_1
    iput p2, v1, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    goto :goto_2

    :cond_5
    iput p2, v1, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_7
    const-string p2, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->shouldShowAutoWifiBubbleTip()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoWifiTipPopup()V

    goto :goto_3

    :cond_8
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean p1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->autoHotspotPreferenceCategory()V

    goto :goto_3

    :cond_9
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean p1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->addMcfAutoHotspotPreference()V

    goto :goto_3

    :cond_a
    const-string p2, "com.samsung.wifi.salogging.intent.action.WIFI_TIPS_SA_LOGGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string p1, "1500"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method
