.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBroadcastChannel:I

.field public mIsHiddenNetworkEnabled:Z

.field public mMacRandomizationSettingsType:I

.field public mPassphrase:Ljava/lang/String;

.field public mSecurityType:I

.field public mSoftApBandArray:[I

.field public mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->update(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;[I)V

    return-void
.end method


# virtual methods
.method public final getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .locals 10

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "WifiApConfiguration"

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isSsidChanged() - SSID not changed."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_0

    :cond_0
    const-string v2, "isSsidChanged() - SSID changed."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :goto_0
    const-string v3, "\tUSER#DEFINED#PWD#\n"

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Network name is empty."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v4, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v7, 0x20

    if-le v2, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Network name error."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_4
    :goto_1
    const-string v2, "Network name length error."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v5

    :goto_3
    const-string v7, "Is Open Security Type: "

    invoke-static {v7, v6, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v1, v7, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    :cond_7
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    const/4 v8, 0x5

    if-ne v2, v8, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v5

    :goto_4
    const-string v9, "Is Open Enhanced Security Type: "

    invoke-static {v9, v6, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_9

    invoke-virtual {v1, v7, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v8, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v8, 0x3f

    if-le v2, v8, :cond_b

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    array-length v3, v2

    if-ne v3, v4, :cond_e

    aget v2, v2, v5

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration$1;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {p1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_6

    :cond_e
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v2

    const/16 v3, 0x95

    const/4 v8, 0x2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    array-length v2, v2

    if-le v2, v4, :cond_f

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration$1;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p1, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    array-length v9, v2

    if-ne v9, v4, :cond_10

    aget v9, v2, v5

    and-int/2addr v9, v8

    if-eqz v9, :cond_10

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration$1;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {p1, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_6

    :cond_10
    array-length v3, v2

    if-ne v3, v4, :cond_12

    aget v2, v2, v5

    and-int/2addr v2, v4

    if-eqz v2, :cond_12

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result p1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mBroadcastChannel:I

    if-eq v2, p1, :cond_11

    const-string p1, "isBroadcastChannelChanged() - Broadcast Channel changed."

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration$1;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mBroadcastChannel:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_6

    :cond_11
    const-string p1, "isBroadcastChannelChanged() - Broadcast Channel not changed."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_6
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mIsHiddenNetworkEnabled:Z

    if-eq v2, p1, :cond_13

    const-string p1, "isHiddenNetworkChanged() - Hidden Network changed."

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    const-string p1, "isHiddenNetworkChanged() - Hidden Network not changed."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mIsHiddenNetworkEnabled:Z

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mMacRandomizationSettingsType:I

    if-eq v0, p1, :cond_15

    const-string p1, "isMacRandomizationSettingTypeChanged() - Mac Randomization Setting Type changed."

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mMacRandomizationSettingsType:I

    if-nez p0, :cond_14

    invoke-virtual {v1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_8

    :cond_14
    invoke-virtual {v1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v1, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_8

    :cond_15
    const-string p0, "isMacRandomizationSettingTypeChanged() - Mac Randomization Setting Type not changed."

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final isDefaultPassphraseSet()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    if-eqz p0, :cond_0

    const-string p0, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiApConfiguration"

    const-string v0, "Default password is set"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final update(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;[I)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mMacRandomizationSettingsType:I

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mIsHiddenNetworkEnabled:Z

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mBroadcastChannel:I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isSupportWifi6StandardEnabled(Landroid/content/Context;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "wifi_ap_pmf_checked"

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "wifi_ap_powersave_mode_checked"

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isWifiSharingEnabled(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApMaxClientDefault()I

    const-string p0, "WifiApConfiguration"

    const-string/jumbo p1, "wifiApConfiguration updated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
