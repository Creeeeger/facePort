.class public final Lcom/android/wifitrackerlib/ScanResultUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public mFilteredNetworkCount:I

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public final mMaxScanAgeMillis:J

.field public final mScanResultsBySsidAndBssid:Ljava/util/Map;

.field public final mSemFilter:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;


# direct methods
.method public constructor <init>(Ljava/time/Clock;JLandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mFilteredNetworkCount:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;

    invoke-direct {p1, p4}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mSemFilter:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    return-void
.end method


# virtual methods
.method public final evictOldScans()V
    .locals 3

    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/ScanResultUpdater;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mFilteredNetworkCount:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getScanResults(J)Ljava/util/List;
    .locals 10

    iget-wide v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxScanAgeMillis argument cannot be greater than mMaxScanAgeMillis!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->evictOldScans()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_1

    iget-wide v3, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final update(Ljava/util/List;Landroid/net/wifi/WifiInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->evictOldScans()V

    iget-object v1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mSemFilter:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;

    invoke-virtual {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->updateRssiFilter()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_2

    iget-wide v3, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mSemFilter:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    iget v5, v3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v6, 0x1388

    if-le v5, v6, :cond_5

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_5

    iget v3, v3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    if-ge v4, v3, :cond_5

    :goto_2
    iget v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mFilteredNetworkCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mFilteredNetworkCount:I

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "WifiTracker.ScanResultUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "it\'s weak signal network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    const-string v3, "WifiTracker.ScanResultUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filtered scan item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, v2, Lcom/samsung/android/wifitrackerlib/LogUtils;->isProductDev:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
