.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getChangedNetworkState(Landroid/content/Intent;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    const-string p0, "networkInfo"

    .line 456
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isEapServerCertUsedForTofuConnection()Z
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmIsTrustOnFirstUseSupported(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 449
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isTrustOnFirstUseEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isSelectedWifiEntryEvent()Z
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NETWORK_STATE_CHANGED mNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConnectPrefController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NETWORK_STATE_CHANGED info.networkId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 464
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wificonnect>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiConnectPrefController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p1, v5

    goto :goto_1

    :sswitch_0
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v4

    goto :goto_1

    :sswitch_6
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move p1, v6

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 366
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->isSelectedWifiEntryEvent()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_1a

    .line 368
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mfinishActivity(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    goto/16 :goto_8

    :pswitch_1
    const-string p1, "info_type"

    .line 343
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "network_id"

    .line 344
    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_INFO_MESSAGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_9

    const/16 p2, 0x46

    if-eq p1, p2, :cond_7

    goto/16 :goto_8

    .line 356
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p2, v1, :cond_1a

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmButtonPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmButtonPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 358
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SHOW_INFO_MESSAGE retry to connect ssid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto/16 :goto_8

    .line 348
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_1a

    const-string p1, "reason"

    .line 349
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 350
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW_INFO_MESSAGE showErrorTextMsg ssid : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorTextMsg(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    goto/16 :goto_8

    .line 438
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mupdateEapSimPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    const-string p0, "ACTION_SIM_STATE_CHANGED"

    .line 439
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 412
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "reason_code"

    .line 413
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_c

    if-ne p1, v2, :cond_b

    goto :goto_2

    .line 418
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorTextMsg(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    goto :goto_3

    .line 416
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorDialogForEnterprise(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    .line 420
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_NETWORK_CONNECT_FAILED reason "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_d
    const-string p0, "ACTION_NETWORK_CONNECT_FAILED but not connecting"

    .line 422
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 372
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->getChangedNetworkState(Landroid/content/Intent;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 375
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_f

    .line 376
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    .line 378
    :cond_e
    invoke-static {p2, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    goto :goto_5

    .line 379
    :cond_f
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_11

    .line 380
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I

    move-result p2

    if-eq p2, v5, :cond_10

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I

    move-result v1

    if-eq p2, v1, :cond_10

    goto :goto_4

    :cond_10
    move v4, v6

    .line 383
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->isEapServerCertUsedForTofuConnection()Z

    move-result p2

    if-eqz p2, :cond_12

    if-nez v4, :cond_12

    .line 385
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object v1

    invoke-static {p2, v1, v6}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mupdateSummary(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;I)V

    .line 386
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 387
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mscrollToTop(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    goto :goto_6

    :cond_11
    :goto_5
    move v4, v6

    .line 390
    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->isSelectedWifiEntryEvent()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 391
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_13

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    if-eq p2, p1, :cond_13

    .line 393
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mfinishActivity(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    .line 395
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previous "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_7

    .line 398
    :cond_14
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_15

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 400
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2, v6}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 401
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mresetProgressButtonAndPreference(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    :cond_15
    :goto_7
    move v6, v4

    .line 406
    :cond_16
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-nez v6, :cond_1a

    .line 408
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mresetProgressButtonAndPreference(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    goto :goto_8

    :pswitch_5
    const-string p1, "wifi_state"

    .line 426
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 427
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    .line 428
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI_STATE_CHANGED_ACTION state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getWifiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eq p1, v4, :cond_18

    if-nez p1, :cond_1a

    :cond_18
    if-eq p2, v4, :cond_19

    if-nez p2, :cond_1a

    .line 432
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mfinishActivity(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    :cond_1a
    :goto_8
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
