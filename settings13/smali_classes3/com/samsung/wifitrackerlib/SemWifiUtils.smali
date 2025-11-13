.class public Lcom/samsung/wifitrackerlib/SemWifiUtils;
.super Ljava/lang/Object;
.source "SemWifiUtils.java"


# static fields
.field private static final AUTOWIFI_DEFAULT_ON:Z

.field private static mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableAutoWifi"

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->AUTOWIFI_DEFAULT_ON:Z

    return-void
.end method

.method public static addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateSignalLevel(I)I
    .locals 2

    const/16 v0, -0x59

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, -0x53

    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, -0x4b

    if-le p0, v1, :cond_2

    if-gt p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-le p0, v0, :cond_3

    const/16 v0, -0x40

    if-gt p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .line 450
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->sCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "Country"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->sCountryCode:Ljava/lang/String;

    .line 453
    :cond_0
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkLocation(Lcom/samsung/android/wifi/SemWifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wifi/SemWifiManager;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object p0

    .line 379
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "WPA_PSK"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SAE"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_2
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 389
    new-instance p0, Landroid/util/Pair;

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 391
    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "latitude"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 392
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "longitude"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    .line 125
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 126
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 127
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 284
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    const-string v0, "telephony_subscription_service"

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 287
    :cond_0
    sget-object p0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 291
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 294
    :cond_0
    sget-object p0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    .line 135
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 136
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hasNetworkLocation(Lcom/samsung/android/wifi/SemWifiManager;Ljava/lang/String;)Z
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 147
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 150
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static hasSamsungCloudPackage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.scloud"

    .line 157
    invoke-static {p0, v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static is6GHz(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x172f

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1743

    if-lt p0, v1, :cond_1

    const/16 v1, 0x1bcb

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .locals 2

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAutoWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 299
    sget-boolean v0, Lcom/samsung/wifitrackerlib/SemWifiUtils;->AUTOWIFI_DEFAULT_ON:Z

    const-string v1, "sem_auto_wifi_control_enabled"

    .line 298
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEapNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEapNetworkWithCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return v1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semGetOemDisableReason()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 103
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isEsim(Landroid/content/Context;I)Z
    .locals 4

    .line 268
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "SemWifiUtils"

    if-nez p0, :cond_0

    const-string p0, "isEsim: TelephonyManager is null"

    .line 270
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccCardInfo;

    .line 275
    invoke-virtual {v2}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isEuicc = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v2}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "user"

    .line 457
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 458
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSecured(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSimCardReady(Landroid/telephony/TelephonyManager;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 333
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string p0, "gsm.sim.state"

    const-string v1, "-1,-1"

    .line 334
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    .line 335
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 336
    aget-object v1, p0, v0

    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v0

    const-string v4, "LOADED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-le v1, v2, :cond_1

    aget-object v1, p0, v2

    .line 337
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object p0, p0, v2

    .line 338
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0

    .line 340
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public static isSimCheck(Landroid/content/Context;)Z
    .locals 4

    .line 238
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const-string v1, "SemWifiUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isSimCheck: subscriptionManager is null"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "isSimCheck: subInfoList is null"

    .line 247
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 251
    :cond_1
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "isSimCheck: TelephonyManager is null"

    .line 253
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 257
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 258
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_3

    return v3

    :cond_4
    return v2
.end method

.method public static isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 233
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportRandomMac(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "0000docomo"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "0001docomo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "XFINITY"

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "xFi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "xfinitywifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3

    .line 215
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "KT WiFi "

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "KT GiGA WiFi "

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "T wifi zone"

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method public static isSupportRandomMacForLgu(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "U+Net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportVerifyingForPassword(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isValidLocation(DD)Z
    .locals 5

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpl-double v2, p0, v0

    const/4 v3, 0x0

    const-string v4, "SemWifiUtils"

    if-eqz v2, :cond_2

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpl-double p0, p2, p0

    if-ltz p0, :cond_1

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Invalid location information. Hide LocationPref"

    .line 365
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    :goto_0
    const-string p0, "There is no location information. Hide LocationPref"

    .line 359
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isValidPsk(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x40

    if-ne p1, v1, :cond_1

    const-string p1, "[0-9A-Fa-f]{64}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x8

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidSae(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x40

    if-ne p1, v1, :cond_1

    const-string p1, "[0-9A-Fa-f]{64}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidWep(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const-string p1, "[0-9A-Fa-f]{10}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_3

    const-string p1, "[0-9A-Fa-f]{26}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    .line 176
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static isWifiSyncEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "user"

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 371
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v0

    const-string v1, "com.samsung.android.scloud"

    .line 373
    invoke-static {p0, v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 374
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 91
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static roundToClosestSpeedEnum(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x7

    if-ge p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    const/16 p0, 0x1e

    return p0
.end method

.method public static showCHNDataChargeWarningToast(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 428
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check isAirPlane : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemWifiUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wifitrackerlib/R$string;->noti_toast_wifi_is_not_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.build.scafe.cream"

    .line 434
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "white"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v4, 0x103012b

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 437
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 440
    :cond_2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v4, 0x1030128

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 442
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    const-string p0, "show toast - data charged warning for China"

    .line 445
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
