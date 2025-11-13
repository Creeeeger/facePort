.class public Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkAndGetDataManager(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    :cond_0
    return-void
.end method

.method public final finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "finish type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    const-string p1, "last_sync_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v1, "is_success"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "error_code"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz v1, :cond_0

    iget-object p3, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sCloudLastRemovedWifiConfigKeys"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    const-string/jumbo v0, "sCloudLastAddOrUpdatedWifiConfigKeys"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p3, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p3, "sCloudLastSyncTimeStamp"

    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "sync fail reason : "

    invoke-static {p0, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object v2, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNetworkInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiSettings.SCloudMgr"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string/jumbo v1, "network not found "

    const-string v2, " profile"

    invoke-static {v1, v0, v2, v4}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "s"

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const-string v5, "k"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string/jumbo v6, "p"

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v4, "a"

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "h"

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "m"

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network not found (maybe removed) "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    :goto_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string/jumbo v4, "record_id"

    iget-object v5, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "timestamp"

    iget-wide v5, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    new-instance v1, Lcom/samsung/android/scloud/lib/storage/data/Body;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/scloud/lib/storage/data/Body;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    new-instance v3, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    new-instance v10, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v9, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    iget-wide v5, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    move-object v4, v10

    move-object v7, v8

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v10, v1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    move-object v1, v3

    :goto_6
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "getData failed, there is no info "

    const-string v2, "WifiSettings.SCloudSync"

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method

.method public final getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    const-string/jumbo p1, "need_cold_start"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "getHeader needColdStart : "

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {p2, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->checkAndUpdateSavedNetworks()V

    const-string/jumbo v0, "sCloudLastAddOrUpdatedWifiConfigKeys"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

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

    new-instance v6, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-wide v1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    iget-object v5, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "sCloudLastRemovedWifiConfigKeys"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v9, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    iget-wide v5, v1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    move-object v4, v2

    move-object v7, v8

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastConfigKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v8, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    iget-wide v4, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    move-object v3, v1

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object p2
.end method

.method public final prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v0, "prepare type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p2, p2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "sCloudLastSyncTimeStamp"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p2, "last_sync_time"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "1.0"

    const-string p2, "data_version"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setData(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->header:Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v2, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncNetwork "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiSettings.SCloudMgr"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/samsung/android/scloud/lib/storage/data/Header;->statue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "normal"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "uploadComplete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "delete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p2, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->body:Lcom/samsung/android/scloud/lib/storage/data/Body;

    iget-object p2, p2, Lcom/samsung/android/scloud/lib/storage/data/Body;->itemData:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->addOrUpdateNetwork(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sync upload completed network "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removed : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object p2, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object v1, v2, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto/16 :goto_0

    :cond_4
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
