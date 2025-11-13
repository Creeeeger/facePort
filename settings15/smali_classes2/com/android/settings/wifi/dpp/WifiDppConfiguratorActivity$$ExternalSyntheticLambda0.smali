.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    sget v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    new-instance v3, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v3, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v3, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {v1}, Landroid/net/wifi/UriParserResults;->getUriScheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "DPP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    move-object v3, v2

    :goto_1
    iput-object v3, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v1, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    sget-object p0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p0

    const-string v1, "WifiDppConfiguratorActivity"

    if-nez p0, :cond_2

    const-string v3, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI for a device that doesn\'t support Wifi DPP - use WifiManager#isEasyConnectSupported"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-nez v3, :cond_3

    const-string v3, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI with null URI!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v1, :cond_e

    if-nez p0, :cond_4

    goto/16 :goto_4

    :cond_4
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v1, :cond_7

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-boolean v8, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v2

    :cond_8
    :goto_2
    const/4 p0, 0x0

    if-eqz v2, :cond_d

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v1, v2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SAE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v3, "WPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iput-object v2, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    goto :goto_5

    :cond_d
    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_5
    return-void
.end method
