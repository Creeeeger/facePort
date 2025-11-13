.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;
.super Ljava/lang/Object;
.source "WifiApCloudBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# instance fields
.field private TAG:Ljava/lang/String;

.field private support5G:Z

.field private final support6G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiApCloudBackupRestore"

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->support5G:Z

    .line 60
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->support6G:Z

    return-void
.end method

.method private createJSONObj(Landroid/content/Context;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "smart_tethering_d2dfamilyid"

    const-string v3, "smart_tethering_d2d_Wifimac"

    .line 93
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sem_wifi"

    .line 95
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiManager;

    .line 96
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    .line 98
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "version"

    const/4 v9, 0x4

    .line 100
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "SSID"

    .line 101
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "hidden"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    :goto_0
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, ""

    const/4 v13, 0x3

    const-string v14, "passphrase"

    const-string v15, "use_security"

    const/4 v9, 0x2

    if-nez v8, :cond_1

    .line 109
    :try_start_2
    invoke-virtual {v7, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v7, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    if-ne v8, v12, :cond_2

    .line 112
    invoke-virtual {v7, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_3

    .line 115
    invoke-virtual {v7, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    if-ne v8, v13, :cond_4

    .line 118
    invoke-virtual {v7, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 120
    :cond_4
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsOpenEnhanced(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x5

    .line 121
    invoke-virtual {v7, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v7, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_5
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object v8

    .line 127
    array-length v10, v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v14, "band"

    if-le v10, v12, :cond_7

    .line 128
    :try_start_3
    iget-object v10, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v15, "Putting DualAp in mBand"

    invoke-static {v10, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray([II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 130
    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const/4 v10, 0x4

    .line 131
    invoke-static {v8, v10}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray([II)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 132
    invoke-virtual {v7, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 134
    :cond_7
    aget v10, v8, v11

    and-int/lit8 v13, v10, 0x4

    if-eqz v13, :cond_8

    .line 135
    invoke-virtual {v7, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    and-int/2addr v10, v9

    if-eqz v10, :cond_9

    .line 137
    invoke-virtual {v7, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 140
    :cond_9
    invoke-virtual {v7, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    :cond_a
    :goto_2
    array-length v8, v8

    if-gt v8, v12, :cond_d

    .line 145
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 147
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_b

    const/16 v6, 0x95

    goto :goto_3

    .line 149
    :cond_b
    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-le v8, v9, :cond_c

    .line 150
    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    goto :goto_3

    :cond_c
    move v6, v11

    :goto_3
    const-string v8, "channel"

    .line 154
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_d
    const-string v6, "timeout"

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_timeout_setting"

    sget v10, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_ap_mobile_data_limit_value"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "datalimite"

    if-eqz v6, :cond_e

    .line 163
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_e

    .line 164
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_e
    const-string v6, "unlimited"

    .line 166
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :goto_4
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    .line 171
    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 173
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 174
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 175
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 176
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 177
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 178
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getDeviceType()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_5

    :cond_f
    const-string v6, "smartap_allowed_devices_name"

    .line 182
    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "smartap_allowed_devices"

    .line 183
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "smartap_allowed_devicestype"

    .line 184
    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    const-string v6, "autoHotspot_switch_bnr_state"

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "family_sharing_bnr_state"

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 190
    invoke-static {v0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-static {v0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 193
    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 195
    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    const-string v2, "last2gChannel"

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_ap_last_2g_channel"

    invoke-static {v3, v6, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "PMFChecked"

    .line 199
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getPMFChecked(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "PSChecked"

    .line 200
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getPSChecked(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v2, :cond_13

    const-string v2, "WifiSharing"

    .line 202
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getWifiSharing(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    :cond_13
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_14

    const-string v2, "maxclient"

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getMaxClient(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_14
    const-string v2, "DisableRandomMac"

    .line 206
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getDisableRandomMac(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "clientsDataUsageSettings"

    .line 212
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    const-string v0, "hotspot"

    .line 214
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 219
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 216
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException enountered.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getMaxClient(Landroid/content/Context;)I
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v0, "getMaxClient:"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget p0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    if-eqz p1, :cond_0

    const-string v0, "sem_wifi"

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result p0

    :cond_1
    return p0
.end method

.method private sendConfigChangedBroadcastToSmartTethering(Landroid/content/Context;)V
    .locals 1

    .line 396
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v0, "sendConfigChangedBroadcastToSmartTethering() - Sending Broadcast from BackupreStore"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 398
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 399
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 7

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v1, "Creating Backup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->createJSONObj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/data/misc/wifi_hostapd/backup.conf"

    if-eqz p1, :cond_0

    .line 340
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "Writing the JSON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 340
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 344
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileWriter exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 350
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string p1, "Backup failed!, There is no conf file"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {p3, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    .line 355
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 357
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 358
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {p2, v2, v3, v0, p1}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 364
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 369
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string p1, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 370
    invoke-interface {p3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 357
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p1

    .line 365
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string p2, "err"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    invoke-interface {p3, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :cond_2
    :goto_3
    return-void
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->mobileap:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableRandomMac(Landroid/content/Context;)I
    .locals 2

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_disable_random_mac"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DisableRandomMac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 0

    .line 328
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->mobileap:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPMFChecked(Landroid/content/Context;)I
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_pmf_checked"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 228
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPMFChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getPSChecked(Landroid/content/Context;)I
    .locals 2

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_powersave_mode_checked"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 302
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPSChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getWifiSharing(Landroid/content/Context;)I
    .locals 2

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getWifiSharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 376
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 377
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 379
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 380
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 383
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v2, v0

    .line 376
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_3

    :catchall_4
    move-exception p1

    move-object v2, v0

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 386
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readJSON IOEx.."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v2, v0

    .line 384
    :goto_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readJSON exception.."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "last2gChannel"

    const-string v4, "PSChecked"

    const-string v5, "PMFChecked"

    const-string v6, "smartap_allowed_devicestype"

    const-string v7, "autoHotspot_switch_bnr_state"

    const-string v8, "family_sharing_bnr_state"

    const-string v9, "smartap_allowed_devices_name"

    const-string v10, "datalimite"

    const-string v11, "channel"

    const-string v12, "smart_tethering_d2dfamilyid"

    const-string v13, "smart_tethering_d2d_Wifimac"

    .line 405
    iget-object v14, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v15, "Creating restore"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "sem_wifi"

    .line 408
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/wifi/SemWifiManager;

    .line 409
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 410
    sget-boolean v15, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    iput-boolean v15, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->support5G:Z

    .line 412
    new-instance v15, Ljava/io/File;

    move-object/from16 v16, v3

    const-string v3, "/data/misc/wifi_hostapd/restore.conf"

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v4

    .line 413
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v18, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v12

    move-object/from16 v19, v13

    .line 414
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v5

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$2;

    invoke-direct {v5, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v4, v12, v13, v15, v5}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v4, 0x1

    .line 424
    invoke-interface {v2, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 428
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 434
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v14}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 436
    new-instance v5, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    const-string v2, "version"

    .line 437
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v2, "hotspot"

    .line 438
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "SSID"

    .line 439
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v3, "hidden"

    .line 440
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 442
    invoke-virtual {v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 444
    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 447
    :goto_0
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v12, -0x1

    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    :try_start_4
    const-string v11, "band"

    .line 456
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_0
    move v11, v12

    .line 460
    :goto_2
    :try_start_5
    iget-object v13, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBand"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",apChannel:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v4, "wifi_ap_last_2g_channel"

    const/4 v13, 0x2

    if-ne v11, v12, :cond_6

    .line 463
    :try_start_6
    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mBand is -1,apChannel:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x95

    if-ne v3, v11, :cond_3

    .line 464
    iget-boolean v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->support5G:Z

    if-eqz v11, :cond_3

    .line 465
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$3;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_5

    :cond_3
    if-lez v3, :cond_5

    const/16 v11, 0xb

    if-le v3, v11, :cond_4

    goto :goto_3

    .line 473
    :cond_4
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$5;

    invoke-direct {v11, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;I)V

    invoke-virtual {v5, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 469
    :cond_5
    :goto_3
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$4;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_5

    :cond_6
    if-nez v11, :cond_8

    if-nez v3, :cond_7

    .line 482
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$6;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    .line 486
    :cond_7
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$7;

    invoke-direct {v11, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;I)V

    invoke-virtual {v5, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 492
    iget-boolean v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->support5G:Z

    if-eqz v12, :cond_a

    if-nez v3, :cond_9

    .line 494
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$8;

    invoke-direct {v11, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;I)V

    invoke-virtual {v5, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    .line 498
    :cond_9
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$9;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    :cond_a
    if-ne v11, v13, :cond_c

    if-nez v3, :cond_b

    .line 504
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$10;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    .line 508
    :cond_b
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$11;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    .line 512
    :cond_c
    sget-boolean v3, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    if-eqz v3, :cond_d

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    .line 513
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$12;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_5

    :cond_d
    if-eqz v3, :cond_e

    const/4 v3, 0x4

    if-ne v11, v3, :cond_e

    .line 518
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$13;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_e
    :goto_5
    const/4 v3, 0x0

    :goto_6
    const-string v11, "use_security"

    .line 523
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "passphrase"

    .line 524
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    if-nez v11, :cond_f

    const/4 v13, 0x0

    .line 527
    invoke-virtual {v5, v15, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_7

    :cond_f
    const/4 v13, 0x1

    if-ne v11, v13, :cond_10

    .line 529
    invoke-virtual {v5, v12, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_7

    :cond_10
    const/4 v13, 0x2

    if-ne v11, v13, :cond_11

    .line 531
    invoke-virtual {v5, v12, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_7

    .line 532
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWpa3SecurityTypeSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x3

    if-ne v11, v13, :cond_12

    .line 534
    invoke-virtual {v5, v12, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_7

    .line 535
    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result v12

    if-eqz v12, :cond_13

    const/4 v12, 0x5

    if-ne v11, v12, :cond_13

    .line 537
    invoke-virtual {v5, v15, v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 539
    :cond_13
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_timeout_setting"

    const-string v13, "timeout"

    .line 540
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 539
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 544
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 545
    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore data limite value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "unlimited"

    .line 546
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v12, "wifi_ap_mobile_data_limit_value"

    const-string v13, "wifi_ap_mobile_data_limit"

    if-eqz v11, :cond_14

    .line 547
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v12, v15}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 552
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v15, 0x1

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    :cond_15
    :goto_8
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 561
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v10, "smartap_allowed_devices"

    .line 562
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 564
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 565
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    goto :goto_9

    :cond_16
    const/4 v15, 0x0

    .line 570
    :goto_9
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    if-eqz v9, :cond_19

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 572
    :goto_a
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_19

    .line 573
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 574
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v15, :cond_17

    .line 576
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 578
    :cond_17
    invoke-virtual {v6, v9, v13, v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const/4 v13, 0x3

    if-ne v9, v13, :cond_18

    .line 579
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "Whitelist MAC invalid. QUIT!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    goto :goto_a

    .line 586
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->canAutoHotspotBeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 587
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 588
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 589
    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inside restore autohotspot value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 593
    :cond_1a
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 594
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 595
    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside restore familysharing value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1b

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_smart_tethering_settings_with_family_restoring_required"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->canFamilySharingBeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 599
    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    goto :goto_b

    :cond_1b
    const/4 v6, 0x0

    .line 602
    invoke-static {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    :cond_1c
    :goto_b
    move-object/from16 v6, v19

    .line 608
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 609
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-static {v0, v6, v7}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v6, v20

    .line 612
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 613
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 614
    invoke-static {v0, v6, v7}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v6, v18

    .line 619
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 620
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    goto :goto_c

    .line 622
    :cond_1f
    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v7, "device dont have PMF"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 623
    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    :goto_c
    move-object/from16 v6, v17

    .line 625
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 626
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setPSChecked(ILandroid/content/Context;)V

    goto :goto_d

    .line 628
    :cond_20
    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v7, "device does\'t have PS"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 629
    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setPSChecked(ILandroid/content/Context;)V

    .line 631
    :goto_d
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v6, :cond_21

    const-string v6, "WifiSharing"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "WifiSharing"

    .line 632
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setWIFISharing(ILandroid/content/Context;)V

    :cond_21
    move-object/from16 v6, v16

    .line 634
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    if-nez v3, :cond_22

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    :cond_22
    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v3, :cond_23

    const-string v3, "maxclient"

    .line 638
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_23

    .line 640
    invoke-virtual {v14, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApMaxClientToFramework(I)V

    :cond_23
    const-string v3, "DisableRandomMac"

    .line 643
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "DisableRandomMac"

    .line 644
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->setDisableRandomMac(ILandroid/content/Context;)V

    :cond_24
    const-string v3, "11axWifi6"

    .line 646
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 649
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    .line 650
    invoke-virtual {v14, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 651
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restored:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->sendConfigChangedBroadcastToSmartTethering(Landroid/content/Context;)V

    .line 654
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "clientsDataUsageSettings"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "clientsDataUsageSettings"

    .line 655
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {v14, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 657
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "restored client data usage settings"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    .line 664
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nullpointer EXCEeption enountered.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_2
    move-exception v0

    .line 661
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON EXCEeption  enountered.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_e
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 413
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    const/4 v1, 0x0

    .line 421
    invoke-interface {v2, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void
.end method

.method public setDisableRandomMac(ILandroid/content/Context;)V
    .locals 2

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DisableRandomMac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_disable_random_mac"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPMFChecked(ILandroid/content/Context;)V
    .locals 2

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPMFChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_pmf_checked"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPSChecked(ILandroid/content/Context;)V
    .locals 2

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPSChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_powersave_mode_checked"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWIFISharing(ILandroid/content/Context;)V
    .locals 2

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWIFISharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_wifi_sharing"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
