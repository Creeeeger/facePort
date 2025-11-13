.class public final Lcom/samsung/android/settings/wifi/WifiReset$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 10

    const-string p0, "WifiReset"

    const-string v0, "Reset Wi-Fi Settings"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiReset - reset"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "airplane_mode_toggleable_radios"

    const-string v2, "bluetooth,wifi,nfc"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiReset;->mIsNotificationMenuSupported:Z

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string/jumbo v4, "wifi_networks_available_notification_on"

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sem_wifi_ape_enabled"

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "sem_wifi_switch_to_better_wifi_enabled"

    if-eqz v1, :cond_2

    invoke-static {p0, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    invoke-static {p0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string/jumbo v1, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sem_wifi_developer_option_visible"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sem_auto_wifi_bubbletip_do_not_show_again"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sem_wifi_carrier_network_offload_enabled"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sem_wifi_l4s_enabled"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "wifi_switch_to_mobile_data_super_aggressive_mode_on"

    const/4 v5, -0x1

    invoke-static {p0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "sem_wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    if-nez v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v8, "wifi_cloud_sa"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v8, "wifi_cloud_sync"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "USA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Canada"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v4

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "notify_open_networks"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/settings/Utils;->isSupportMobileWips:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "MobileWIPS"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v4

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "auto_wifi"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "ape"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v3, :cond_8

    move v3, v4

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "wifi_poor_network_detection"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_8

    :cond_9
    move v3, v2

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "auto_connect_hotspot"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSwitchToBetterWifiEnabled(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    goto :goto_9

    :cond_a
    move v3, v2

    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "switch_to_better_wifi_with_screen_off_only"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSwitchToBetterWifiEnabled(Landroid/content/Context;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_b

    move v3, v4

    goto :goto_a

    :cond_b
    move v3, v2

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v8, "switch_to_better_wifi"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSwitchToBetterWifiEnabled(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v6, :cond_c

    move v3, v4

    goto :goto_b

    :cond_c
    move v3, v2

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "switch_to_better_wifi_with_screen_on"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c

    :cond_d
    move v1, v2

    :goto_c
    if-eqz v1, :cond_e

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isAutoWifiDefaultOn(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v3, "sem_auto_wifi_control_enabled"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentResetSettingsFragment;->resetDevelopmentOptions(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->resetAiConfiguration(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWepAllowed(Z)V

    sput v5, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed:I

    const-string p0, "SettingsSCloudWifi"

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiReset$1$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
