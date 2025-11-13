.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSelectedWifiEntryEvent()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NETWORK_STATE_CHANGED mNetworkId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget v2, v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConnectPrefController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NETWORK_STATE_CHANGED info.networkId : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x5

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wificonnect>>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConnectPrefController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v1, v6

    goto :goto_1

    :sswitch_0
    const-string v8, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v8, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1

    :sswitch_2
    const-string v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v8, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :sswitch_6
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v7

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->isSelectedWifiEntryEvent()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    goto/16 :goto_9

    :pswitch_1
    const-string p1, "info_type"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "network_id"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SHOW_INFO_MESSAGE: "

    const-string v3, ", "

    invoke-static {v1, v3, p1, v0, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_9

    const/16 p2, 0x46

    if-eq p1, p2, :cond_7

    goto/16 :goto_9

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p2, v0, :cond_21

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_21

    sget-boolean p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SHOW_INFO_MESSAGE retry to connect ssid : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto/16 :goto_9

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v0, :cond_21

    const-string p1, "reason"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-boolean p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SHOW_INFO_MESSAGE showErrorTextMsg ssid : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto/16 :goto_9

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateEapSimPref()V

    const-string p0, "ACTION_SIM_STATE_CHANGED"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-boolean v1, v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz v1, :cond_11

    const-string v1, "networkId"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Connect failed for "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6, v8, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string p0, "Not failed event for target AP"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string v1, "reason_code"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v4, :cond_d

    if-ne p2, p1, :cond_c

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto/16 :goto_4

    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p0, "Cancel show dialog - It\'s not an Enterprise network"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_f
    if-ne p2, v4, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f140889

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f143526

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f14371a

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    const v3, 0x7f141b4b

    invoke-virtual {v1, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    const/high16 v0, 0x1040000

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_4
    const-string p0, "ACTION_NETWORK_CONNECT_FAILED reason "

    invoke-static {p2, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    const-string p0, "ACTION_NETWORK_CONNECT_FAILED but not connecting"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_4
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    :cond_12
    if-eqz v5, :cond_1d

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, p1, :cond_14

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    :cond_13
    iput v6, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    goto :goto_6

    :cond_14
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, p2, :cond_18

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    if-eq v0, v6, :cond_15

    iget v1, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    if-eq v0, v1, :cond_15

    goto :goto_5

    :cond_15
    move v3, v7

    :goto_5
    iput v6, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    iget-boolean v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-nez v0, :cond_16

    goto :goto_7

    :cond_16
    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_19

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->isTrustOnFirstUseEnabled()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_7

    :cond_17
    if-nez v3, :cond_19

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2, v0, v7}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2, v7}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_19

    const-string/jumbo v0, "scrollToTop"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_7

    :cond_18
    :goto_6
    move v3, v7

    :cond_19
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->isSelectedWifiEntryEvent()Z

    move-result p2

    if-eqz p2, :cond_1b

    if-ne v5, p1, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v5, :cond_1a

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "previous "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " current "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iput-object v5, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_8

    :cond_1b
    if-ne v5, p1, :cond_1c

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p2, :cond_1c

    iput-boolean v7, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    :cond_1c
    :goto_8
    move v7, v3

    :cond_1d
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, p1, :cond_21

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_21

    if-nez v7, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    goto :goto_9

    :pswitch_5
    const-string/jumbo p1, "wifi_state"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "WIFI_STATE_CHANGED_ACTION state : "

    const-string v1, ", getWifiState : "

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_1e
    if-eq p1, v3, :cond_1f

    if-nez p1, :cond_21

    :cond_1f
    if-eq p2, v3, :cond_20

    if-nez p2, :cond_21

    :cond_20
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    :cond_21
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_6
        -0x147b62d9 -> :sswitch_5
        -0x1183ee15 -> :sswitch_4
        -0xdb21ee7 -> :sswitch_3
        -0x18365bb -> :sswitch_2
        0x41319010 -> :sswitch_1
        0x60e99352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
