.class public abstract Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BAND_2GHZ_AND_5GHZ_ARRAY:[I

.field public static final BAND_2GHZ_ARRAY:[I

.field public static final BAND_5GHZ_ARRAY:[I

.field public static final BAND_6GHZ_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    return-void
.end method

.method public static checkIfSecurityTypeIsAnyOpenVariant(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Check with Open Security Type: "

    const-string v4, "WifiApSoftApUtils"

    invoke-static {v3, v4, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v2, :cond_3

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const-string v2, "Check with Open Enhanced Security Type: "

    invoke-static {v2, v4, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method public static getBandArray(Landroid/content/Context;)[I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "WifiApSoftApUtils"

    const-string/jumbo v0, "softApBandArray is NULL/Empty. Resetting to 2.4Ghz"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getBandArrayAfterBitWiseOperation([I)[I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    :goto_0
    return-object p0
.end method

.method public static getBroadcastChannel(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_last_2g_channel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/16 v0, 0xb

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    const-string p0, "Getting Broadcast Channel): "

    const-string v0, "WifiApSoftApUtils"

    invoke-static {v1, p0, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getSecurityType(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    return p0
.end method

.method public static getSecurityType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0301d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object v5, p0, v4

    const/4 v6, 0x3

    aget-object v7, p0, v6

    const/4 v8, 0x4

    aget-object p0, p0, v8

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    const-string p0, "getSecurityType - Invalid securityTypeString : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApSoftApUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getSecurityTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0301d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v2, p0, v1

    const/4 v3, 0x2

    aget-object v4, p0, v3

    const/4 v5, 0x3

    aget-object v6, p0, v5

    const/4 v7, 0x4

    aget-object p0, p0, v7

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v5, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const-string p0, "getSecurityTypeString-Invalid security type: "

    const-string v0, "WifiApSoftApUtils"

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    return-object v2

    :cond_1
    return-object p0

    :cond_2
    return-object v6

    :cond_3
    return-object v4

    :cond_4
    return-object v0
.end method

.method public static getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedBandList(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_ARRAY:[I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_2GHZ_AND_5GHZ_ARRAY:[I

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_5GHZ_ARRAY:[I

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->BAND_6GHZ_ARRAY:[I

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static getTurnOffHotspotTimerInMinutes(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_timeout_setting"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    div-int/lit8 v2, v0, 0x3c

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const-string p0, "Getting Turn Off Hotspot Timer(Minutes): "

    const-string v0, "WifiApSoftApUtils"

    invoke-static {v2, p0, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    return-object v0
.end method

.method public static isDefaultPassphraseSet(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiApSoftApUtils"

    const-string v0, " Default password is set"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWifi6StandardEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_11ax_mode_checked"

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

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static searchForBandInArray(I[I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    and-int/2addr v3, p0

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

.method public static setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_0

    :cond_0
    const-string p0, "WifiApSoftApUtils"

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setTurnOffHotspotTimerInMinutes(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting Turn Off Hotspot Timer(Minutes): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSoftApUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_timeout_setting"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
