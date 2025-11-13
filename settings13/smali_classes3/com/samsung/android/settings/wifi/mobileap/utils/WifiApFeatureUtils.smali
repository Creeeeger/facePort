.class public Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;
.super Ljava/lang/Object;
.source "WifiApFeatureUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApFeatureUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDeviceDefaultMaxConnectionSupported()I
    .locals 1

    .line 91
    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    return v0
.end method

.method public static getDeviceDefaultTurnOffHotspotTimerSupportedInSeconds()I
    .locals 1

    .line 87
    sget v0, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    return v0
.end method

.method public static is5GhzBandSupported(Landroid/content/Context;)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result p0

    return p0
.end method

.method public static is6GhzBandSupported(Landroid/content/Context;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result p0

    return p0
.end method

.method public static isAutoHotspotLiteSupported(Landroid/content/Context;)Z
    .locals 0

    .line 47
    sget-boolean p0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    return p0
.end method

.method public static isAutoHotspotSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isAutoHotspotWifiOnlyLiteSupported(Landroid/content/Context;)Z
    .locals 0

    .line 52
    sget-boolean p0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    return p0
.end method

.method public static isDualBand2GhzAnd5GhzSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isMaxConnectionMenuSupported(Landroid/content/Context;)Z
    .locals 0

    .line 83
    sget-boolean p0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    return p0
.end method

.method public static isMobileDataUsageSupported(Landroid/content/Context;)Z
    .locals 2

    .line 144
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vendor.wifiap.newUX"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 147
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->TAG:Ljava/lang/String;

    const-string v1, "wifiap newUX force enable "

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 150
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->TAG:Ljava/lang/String;

    const-string v0, "wifiap newUX force disable "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static isOneTimePasswordSupported(Landroid/content/Context;)Z
    .locals 2

    .line 158
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vendor.wifiap.newUX"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 161
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->TAG:Ljava/lang/String;

    const-string v1, "wifiap newUX force enable "

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 164
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->TAG:Ljava/lang/String;

    const-string v0, "wifiap newUX force disable "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static isOpenEnhancedSecurityTypeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOperatorBrandNEWCO()Z
    .locals 2

    .line 111
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "NEWCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorBrandSPRINT()Z
    .locals 2

    .line 119
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "SPRINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorBrandTMO()Z
    .locals 2

    .line 104
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorBrandVZW()Z
    .locals 2

    .line 96
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPowerSavingModeSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isProtectedManagementFramesSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isWifi6StandardSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiApSettingUserModificationAllowed(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    .line 138
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApSettingsAllowedToChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isWifiSharingLiteSupported(Landroid/content/Context;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result p0

    return p0
.end method

.method public static isWifiSharingSupported(Landroid/content/Context;)Z
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result p0

    return p0
.end method

.method public static isWpa3SecurityTypeSupported(Landroid/content/Context;)Z
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result p0

    return p0
.end method
