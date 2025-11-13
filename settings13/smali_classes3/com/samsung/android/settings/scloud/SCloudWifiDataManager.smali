.class public Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
.super Ljava/lang/Object;
.source "SCloudWifiDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

.field private mSavedConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreference:Landroid/content/SharedPreferences;

.field private final mUpdatedProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final syncHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->bindSamsungCloudRPCSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misWifiSyncAvailable(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->isWifiSyncAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartFastSync(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->startFastSync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsInstance(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;-><init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    const-string v0, "SettingsSCloudWifi"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v0, "wifi"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    return-void
.end method

.method private addOrUpdateNetwork(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "m"

    const-string v1, "h"

    const-string v2, "a"

    .line 379
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "s"

    .line 381
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "k"

    .line 382
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    const-string v8, "p"

    if-eq v5, v7, :cond_2

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    :try_start_1
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 397
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 393
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 389
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    .line 385
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 403
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    iput-boolean v2, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 406
    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 407
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 409
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 410
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mergeAndGetConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addorupdated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {v1, v0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    .line 420
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_9
    return-void
.end method

.method private addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V
    .locals 3

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 166
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " into "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private bindSamsungCloudRPCSetting()V
    .locals 3

    const-string v0, "WifiSettings.SCloudMgr"

    const-string v1, "bindSamsungCloudRPCSetting"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;-><init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-void
.end method

.method private checkAndUpdateSavedNetworks()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    .line 310
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

    .line 311
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    .line 97
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->sInstance:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getJson(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "s"

    .line 351
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    const-string v1, "k"

    .line 353
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "p"

    const/4 v3, 0x0

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    :try_start_1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 356
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p0, "a"

    .line 368
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "h"

    .line 369
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "m"

    .line 370
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;",
            ">;"
        }
    .end annotation

    const-string v0, "WifiSettings.SCloudMgr"

    .line 132
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\n"

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 137
    :try_start_0
    new-instance v6, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "IllegalArgumentException"

    .line 141
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string v5, "NumberFormatException"

    .line 139
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getSecurityType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 458
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    return v0

    .line 460
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 461
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 465
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 466
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_3

    aget-object p0, p0, v0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x628e3bc6

    if-eq p0, v0, :cond_1

    const v0, 0x391c3573

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "sCloudLastRemovedWifiConfigKeys"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p0, "sCloudLastAddOrUpdatedWifiConfigKeys"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    const-string p0, "normal"

    return-object p0

    :cond_3
    const-string p0, "delete"

    return-object p0
.end method

.method private isWifiSyncAvailable()Z
    .locals 6

    .line 624
    new-instance v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {v0}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;-><init>()V

    .line 625
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    const/4 v2, 0x0

    const-string v3, "WifiSettings.SCloudMgr"

    if-nez v1, :cond_0

    const-string p0, "mSamsungCloudRPCSetting is null"

    .line 626
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v4, "com.android.settings.wifiprofilesync"

    .line 629
    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "rcode"

    .line 630
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget v1, v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    .line 633
    iget v0, v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    if-nez v1, :cond_1

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isScOn is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 639
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precondition is : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 643
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.scloud"

    invoke-static {p0, v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Cloud package is not exist"

    .line 644
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private mergeAndGetConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->checkAndUpdateSavedNetworks()V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_6

    .line 429
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 434
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 439
    :cond_1
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 440
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, p0, v3

    :goto_0
    move v3, v2

    .line 444
    :cond_2
    :goto_1
    iget-boolean p0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eq p0, v1, :cond_3

    .line 445
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    move v3, v2

    .line 448
    :cond_3
    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq p0, p1, :cond_4

    .line 449
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_6
    return-object p1
.end method

.method private removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V
    .locals 3

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 174
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
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

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startFastSync()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;-><init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    const-string p0, "com.android.settings.wifiprofilesync"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V

    return-void
.end method

.method private validateConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 324
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WifiSettings.SCloudMgr"

    if-eqz v2, :cond_1

    const-string p0, "empty SSID"

    .line 326
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v2, "\t"

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "SSID has tab"

    .line 330
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 333
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    return v0

    .line 336
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    .line 339
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 342
    :cond_5
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne p0, v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method


# virtual methods
.method clearAll()V
    .locals 2

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "sCloudLastRemovedWifiConfigKeys"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "sCloudLastAddOrUpdatedWifiConfigKeys"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    return-void
.end method

.method getLastSyncTimestamp()J
    .locals 3

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v0, "sCloudLastSyncTimeStamp"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getNetworkInfo(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings.SCloudMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "network not found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " profile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 268
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getJson(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 270
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "network not found (maybe removed) "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 272
    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->getRecordDataSet(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    move-result-object p0

    return-object p0
.end method

.method getUpdatedWifiNetworks(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/lib/storage/data/Header;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->checkAndUpdateSavedNetworks()V

    const-string v1, "sCloudLastAddOrUpdatedWifiConfigKeys"

    if-eqz p1, :cond_1

    .line 238
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 239
    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "sCloudLastRemovedWifiConfigKeys"

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 246
    iget-object v3, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 249
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 250
    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method syncNetwork(Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;)V
    .locals 5

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSettings.SCloudMgr"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "uploadComplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 291
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getBody()Lcom/samsung/android/scloud/lib/storage/data/Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/Body;->getItemData()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    const-string v0, "data"

    .line 293
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addOrUpdateNetwork(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 302
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sync upload completed network "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object v0, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2
        -0x4385eda6 -> :sswitch_1
        -0x3df94319 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    .line 189
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncToAddOrUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "sCloudLastAddOrUpdatedWifiConfigKeys"

    const-string v4, "sCloudLastRemovedWifiConfigKeys"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 197
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 198
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 200
    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 202
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 203
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 205
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 206
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public syncToRemove(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->validateConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncToRemove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "sCloudLastRemovedWifiConfigKeys"

    const-string v4, "sCloudLastAddOrUpdatedWifiConfigKeys"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 221
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 222
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 224
    new-instance v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 225
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 226
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 228
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->removeFromSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 229
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addToSharedPreference(Ljava/lang/String;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;)V

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method updateLastSyncTimestamp(J)V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sCloudLastSyncTimeStamp"

    .line 113
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
