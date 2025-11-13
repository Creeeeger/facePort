.class public Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;
.super Ljava/lang/Object;
.source "WifiApSoftApUtils.java"


# static fields
.field public static final BAND_2GHZ_AND_5GHZ_ARRAY:[I

.field public static final BAND_2GHZ_ARRAY:[I

.field public static final BAND_5GHZ_ARRAY:[I

.field public static final BAND_6GHZ_ARRAY:[I

.field public static CONFIG_ERROR_PASSWORD:Ljava/lang/String;

.field public static CONFIG_ERROR_SSID:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static isRestHappening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 45
    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 46
    fill-array-data v3, :array_0

    sput-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    new-array v3, v0, [I

    aput v1, v3, v2

    .line 47
    sput-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    new-array v0, v0, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    .line 48
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    const-string v0, "\tUSER#DEFINED#PWD#\n"

    .line 52
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_SSID:Ljava/lang/String;

    .line 53
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isRestHappening:Z

    .line 54
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_PASSWORD:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfSecurityTypeIsAnyOpenVariant(I)Z
    .locals 1

    .line 98
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsOpenEnhanced(I)Z

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

.method public static checkIfSecurityTypeIsOpen(I)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 82
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check with Open Security Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static checkIfSecurityTypeIsOpenEnhanced(I)Z
    .locals 3

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 93
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check with Open Enhanced Security Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getBandArray(Landroid/content/Context;)[I
    .locals 1

    .line 148
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    array-length v0, p0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    const-string v0, "softApBandArray is NULL/Empty. Resetting to 2.4Ghz"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    .line 154
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getBandArrayAfterBitWiseOperation([I)[I
    .locals 2

    .line 159
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 160
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    aget p0, p0, v0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    .line 162
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 164
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    goto :goto_0

    .line 166
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    :goto_0
    return-object p0
.end method

.method public static getBandArrayFromSoftApConfig(Landroid/content/Context;)[I
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getBroadcastChannel(Landroid/content/Context;)I
    .locals 3

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_last_2g_channel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/16 v0, 0xb

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    .line 233
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Broadcast Channel): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getDefaultPassphraseSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_random_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultTempPassphrase is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const-wide/16 v7, 0x1

    invoke-static {v2, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate defaultTempPassphrase is ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object v0
.end method

.method public static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPassPhrase(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecurityType(Landroid/content/Context;)I
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    return p0
.end method

.method public static getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedBandList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isDualBand2GhzAnd5GhzSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    const/4 v4, 0x2

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is6GhzBandSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static getTurnOffHotspotTimerInMinutes(Landroid/content/Context;)I
    .locals 4

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultTurnOffHotspotTimerSupportedInSeconds()I

    move-result v1

    const/16 v2, 0x3c

    div-int/2addr v1, v2

    const-string v3, "wifi_ap_timeout_setting"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 250
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->getDeviceDefaultTurnOffHotspotTimerSupportedInSeconds()I

    move-result v0

    div-int/2addr v0, v2

    .line 251
    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    .line 253
    div-int/lit8 v0, v0, 0x3c

    .line 254
    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V

    .line 256
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Turn Off Hotspot Timer(Minutes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 2

    .line 177
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayFromSoftApConfig(Landroid/content/Context;)[I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[I)V

    return-object v0
.end method

.method public static isDefaultPassphraseSet(Landroid/content/Context;)Z
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_0

    .line 109
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    const-string v0, " Default password is set"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceMacAddressTypeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_disable_random_mac"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isHiddenNetworkEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    return p0
.end method

.method public static isPowerSavingModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_powersave_mode_checked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isProtectedManagementFramesEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_pmf_checked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSupportWifi6StandardEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_11ax_mode_checked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 308
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiSharingSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static searchForBandInArray([II)Z
    .locals 4

    .line 216
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static setBroadcastChannel(Landroid/content/Context;I)V
    .locals 3

    .line 238
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Broadcast Channel): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_last_2g_channel"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setDeviceMacAddressTypeEnabled(Landroid/content/Context;I)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_disable_random_mac"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setPowerSavingModeIsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_powersave_mode_checked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setProtectedManagementFramesIsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_pmf_checked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method public static setSupportWifi6StandardIsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_11ax_mode_checked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V
    .locals 3

    .line 261
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Turn Off Hotspot Timer(Minutes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_timeout_setting"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setWifiSharingIsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
