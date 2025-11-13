.class public Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;
.super Ljava/lang/Object;
.source "WifiAdvancedUtils.java"


# static fields
.field private static final SUPPORT_ADPS:Z

.field private static final SUPPORT_COMCAST_WIFI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->SUPPORT_COMCAST_WIFI:Z

    .line 22
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_WIFI_SUPPORT_ADPS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->SUPPORT_ADPS:Z

    return-void
.end method

.method public static isAutoWifiOn(Landroid/content/Context;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDataPriorityModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_wifi_ape_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMobileWipsOn(Landroid/content/Context;)Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_mwips"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isPasspointOn(Landroid/content/Context;)Z
    .locals 1

    .line 30
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 31
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPasspointEnabled()Z

    move-result p0

    return p0
.end method

.method public static isShowNetworkQualityOn(Landroid/content/Context;)Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 50
    sget-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->SUPPORT_COMCAST_WIFI:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "sem_wifi_network_rating_scorer_enabled"

    .line 49
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSmartNetworkSwitchOn(Landroid/content/Context;)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_watchdog_poor_network_test_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSwitchToBetterWifiOn(Landroid/content/Context;)Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_wifi_switch_to_better_wifi_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWifiCloudSyncOn(Landroid/content/Context;)Z
    .locals 1

    .line 25
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    const-string v0, "com.android.settings.wifiprofilesync"

    .line 26
    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWifiPowerSavingModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 65
    sget-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->SUPPORT_ADPS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_adps_enable"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
