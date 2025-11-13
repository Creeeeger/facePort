.class public Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;
.super Ljava/lang/Object;
.source "WifiApFrameworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApFrameworkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static canAutoHotspotBeEnabled(Landroid/content/Context;)Z
    .locals 8

    .line 151
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    move-result v0

    .line 152
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 153
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 154
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 155
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v5

    .line 156
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v3

    .line 157
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result p0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v3, "AutoHotspot feature can`t be made ON: RESULT_ERROR_TETHERING_RESTRICTED"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_0
    if-eqz v1, :cond_1

    .line 163
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot feature can`t be made ON: RESULT_ERROR_AIRPLANE_MODE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_1
    if-eqz v2, :cond_2

    .line 167
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot feature can`t be made ON: RESULT_ERROR_NO_SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_2
    if-eqz v4, :cond_3

    .line 171
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot feature can`t be made ON: RESULT_ERROR_NO_ACTIVE_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_3
    if-eqz v5, :cond_4

    .line 175
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot feature can`t be made ON: RESULT_ERROR_NO_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_4
    if-eqz v6, :cond_5

    .line 179
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot feature can`t be made ON: RESULT_ERROR_DISABLED_NEARBY_SCANNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 182
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz p0, :cond_7

    .line 184
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "AutoHotspot feature can`t be made ON: RESULT_ERROR_DEFAULT_PASSWORD"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v7, v3

    :goto_0
    return v7
.end method

.method public static canFamilySharingBeEnabled(Landroid/content/Context;)Z
    .locals 9

    .line 223
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "Checking setCheck conditions of family sharing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 225
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 226
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    .line 227
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isGroupSharingAppDisabled(Landroid/content/Context;)Z

    move-result v4

    .line 228
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    move-result v5

    xor-int/2addr v5, v2

    .line 229
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    .line 230
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v7

    xor-int/2addr v7, v2

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    const-string v2, "Group sharing App check condition failed."

    .line 233
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "Sim check condition failed."

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    :cond_1
    if-eqz v7, :cond_2

    const-string v1, "Auto Hotspot On check condition failed."

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    :cond_2
    if-eqz v3, :cond_3

    const-string v1, "Network check condition failed."

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    :cond_3
    if-eqz v5, :cond_4

    const-string v1, "Family service registered check condition failed. Trying to register"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchFamilyServiceRegisterActivity(Landroid/content/Context;)V

    const-string p0, "Trying to register Family service"

    .line 255
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    :cond_4
    if-eqz v6, :cond_5

    const-string p0, "Family group Id check failed."

    .line 260
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v8, v2

    :goto_0
    return v8
.end method

.method public static getAutoHotspotAllowedDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 333
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static getOtpPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 395
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "getOtpPassword: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 1

    const-string v0, "sem_wifi"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static getWifiApMaxClientDefault(Landroid/content/Context;)I
    .locals 3

    .line 294
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result v0

    .line 295
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandSPRINT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNetworkTypeGSM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "chameleon_gsmmaxuser"

    const/4 v1, 0x1

    .line 299
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "chameleon_maxuser"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result p0

    :goto_0
    move v0, p0

    goto :goto_1

    .line 306
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 307
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result v0

    .line 309
    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxClientConnectionDefault : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getWifiApMaxClientFromFramework(Landroid/content/Context;)I
    .locals 3

    .line 268
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0

    .line 269
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandVZW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    .line 271
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandSPRINT()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNetworkTypeGSM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "chameleon_gsmmaxuser"

    const/4 v1, 0x1

    .line 275
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result p0

    :goto_0
    move v0, p0

    goto :goto_1

    .line 282
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0

    .line 286
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result p0

    if-ge p0, v0, :cond_5

    .line 287
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultMaxConnectionSupported()I

    move-result v0

    .line 289
    :cond_5
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxClientConnectionFromFramework : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getWifiApStaListDetail(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiApState(Landroid/content/Context;)I
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    const-string v0, "wifi"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static isActiveNetworkisCellular(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 401
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 402
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 404
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "ActiveNetwork is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 407
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    .line 409
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "networkCapabilities is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 412
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/16 v2, 0xc

    .line 413
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isAutoHotspotSetOn(Landroid/content/Context;)Z
    .locals 3

    .line 192
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_smart_tethering_settings"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 194
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting(DB) AutoHotspot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 197
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "AutoHotspot Not Supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isBandSeekBarUxSupported(Landroid/content/Context;)Z
    .locals 4

    .line 119
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isDualBand2GhzAnd5GhzSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 122
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is6GhzBandSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static isFamilySharingSetOn(Landroid/content/Context;)Z
    .locals 3

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 217
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting(DB) FamilySharing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isOtpPasswordEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 376
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApGuestModeEnabled()Z

    move-result p0

    .line 378
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOtpPasswordEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isWifiApStateEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApState(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiApStateEnabling(Landroid/content/Context;)Z
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApState(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 83
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWifiP2pConnected(Landroid/content/Context;)Z
    .locals 0

    .line 324
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    move-result p0

    return p0
.end method

.method public static isWifiStateEnablingOrEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 91
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resetSoftAp(Landroid/content/Context;)V
    .locals 4

    .line 100
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "Resetting Hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;-><init>(Lcom/samsung/android/wifi/SemWifiManager;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static resetSoftApWithoutDelay(Landroid/content/Context;)V
    .locals 2

    .line 112
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "Resetting Hotspot  Without Delay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    return-void
.end method

.method public static setAutoHotspotDB(Landroid/content/Context;Z)V
    .locals 3

    .line 138
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting(DB) AutoHotspot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 142
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApkForSyncSA(Landroid/content/Context;)V

    .line 143
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApk(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setWifiApBleMhsRole(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setFamilySharingDB(Landroid/content/Context;Z)V
    .locals 5

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting(DB) FamilySharing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",existing_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setOtpPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 389
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "setOtpPassword: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 391
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V

    return-void
.end method

.method public static setOtpPasswordEnabled(Landroid/content/Context;Z)V
    .locals 3

    .line 383
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtpPasswordEnabled: isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 385
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApGuestModeEnabled(Z)V

    return-void
.end method

.method public static setWifiApBleMhsRole(Landroid/content/Context;Z)V
    .locals 3

    .line 133
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings Ble For MHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleMhsRole(Z)Z

    return-void
.end method

.method public static setWifiApMaxClientToFramework(Landroid/content/Context;I)V
    .locals 0

    .line 314
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApMaxClientToFramework(I)V

    return-void
.end method

.method public static setWifiEnabled(Landroid/content/Context;Z)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
