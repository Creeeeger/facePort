.class public Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;
.super Ljava/lang/Object;
.source "SCloudWifiConfigSyncImpl.java"

# interfaces
.implements Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# instance fields
.field private mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndGetDataManager(Landroid/content/Context;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    const-string p1, "last_sync_time"

    const-wide/16 v1, 0x0

    .line 96
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v1, "is_success"

    .line 97
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "error_code"

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz v1, :cond_0

    .line 102
    iget-object p3, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p3}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->clearAll()V

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->updateLastSyncTimestamp(J)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sync fail reason : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getNetworkInfo(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getData failed, there is no info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.SCloudSync"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getDownloadPathMap(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/lib/storage/data/Header;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    const-string p1, "need_cold_start"

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHeader needColdStart : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getUpdatedWifiNetworks(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings.SCloudSync"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    .line 49
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getLastSyncTimestamp()J

    move-result-wide v0

    const-string p2, "last_sync_time"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string p2, "data_version"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;",
            ">;",
            "Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;",
            ")Z"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->checkAndGetDataManager(Landroid/content/Context;)V

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    .line 82
    iget-object p3, p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncNetwork(Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
