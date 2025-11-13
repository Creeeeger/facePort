.class public Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSavedConfigs:Ljava/util/HashMap;

.field public final mSharedPreference:Landroid/content/SharedPreferences;

.field public final mUpdatedProfiles:Ljava/util/HashMap;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

.field public final syncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;-><init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    const-string v0, "SettingsSCloudWifi"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getSecurityType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_3

    aget-object p0, p0, v1

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static validateConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WifiSettings.SCloudMgr"

    if-eqz v2, :cond_1

    const-string p0, "empty SSID"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "SSID has tab"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne p0, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method


# virtual methods
.method public final addOrUpdateNetwork(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "m"

    const-string v1, "h"

    const-string v2, "a"

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v9, "s"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v9, "k"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v8, :cond_3

    const-string/jumbo v10, "p"

    if-eq v9, v6, :cond_2

    if-eq v9, v4, :cond_1

    if-eq v9, v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    goto :goto_0

    :cond_3
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_4

    move v2, v8

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    iput-boolean v2, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v7

    :goto_2
    iput-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->checkAndUpdateSavedNetworks()V

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_f

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-eq v0, v6, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_5
    move v0, v8

    goto :goto_7

    :cond_a
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    goto :goto_5

    :cond_b
    :goto_6
    move v0, v7

    :goto_7
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    iget-boolean v2, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eq v1, v2, :cond_c

    iput-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    move v0, v8

    :cond_c
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget v2, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq v1, v2, :cond_d

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_8

    :cond_d
    move v8, v0

    :goto_8
    if-eqz v8, :cond_e

    :goto_9
    move-object v3, p1

    goto :goto_a

    :cond_e
    const/4 p1, 0x0

    goto :goto_9

    :cond_f
    :goto_a
    if-eqz v3, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addorupdated : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSettings.SCloudMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_10
    return-void
.end method

.method public final addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "append "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " into "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final checkAndUpdateSavedNetworks()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 8

    const-string v0, "WifiSettings.SCloudMgr"

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    :try_start_0
    new-instance v5, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x628e3bc6

    if-eq v6, v7, :cond_1

    const v7, 0x391c3573

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v6, "sCloudLastRemovedWifiConfigKeys"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "delete"

    goto :goto_2

    :cond_1
    const-string/jumbo v6, "sCloudLastAddOrUpdatedWifiConfigKeys"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const-string/jumbo v6, "normal"

    :goto_2
    invoke-direct {v5, v4, v6}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v4, "IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string v4, "NumberFormatException"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syncToAddOrUpdate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "sCloudLastAddOrUpdatedWifiConfigKeys"

    const-string/jumbo v4, "sCloudLastRemovedWifiConfigKeys"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final syncToRemove(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syncToRemove "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "sCloudLastRemovedWifiConfigKeys"

    const-string/jumbo v4, "sCloudLastAddOrUpdatedWifiConfigKeys"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
