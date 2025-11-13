.class public Lcom/android/wifitrackerlib/ScanResultUpdater;
.super Ljava/lang/Object;
.source "ScanResultUpdater.java"


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Lcom/samsung/wifitrackerlib/LogUtils;

.field private final mMaxScanAgeMillis:J

.field private mScanResultsBySsidAndBssid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemFilter:Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;


# direct methods
.method public static synthetic $r8$lambda$tB-PzvBbxxsOuOTXlgW6sel5lQY(Lcom/android/wifitrackerlib/ScanResultUpdater;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->lambda$evictOldScans$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/time/Clock;J)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    .line 69
    iput-wide p2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    .line 70
    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    .line 71
    new-instance p1, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;

    invoke-direct {p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mSemFilter:Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;

    .line 72
    new-instance p1, Lcom/samsung/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    return-void
.end method

.method private static final DBG()Z
    .locals 1

    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0
.end method

.method private evictOldScans()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/ScanResultUpdater;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$evictOldScans$0(Ljava/util/Map$Entry;)Z
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide p0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearScanResults()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 130
    iget-wide v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanResults(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 139
    iget-wide v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 146
    iget-object v4, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 147
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 140
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "maxScanAgeMillis argument cannot be greater than mMaxScanAgeMillis!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->evictOldScans()V

    .line 82
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

    .line 83
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_1

    .line 85
    iget-wide v3, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update(Ljava/util/List;Landroid/net/wifi/WifiInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            ")V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->evictOldScans()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 98
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_2

    .line 101
    iget-wide v3, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mSemFilter:Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;

    invoke-virtual {v3, v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->isAllowToShowInScanList(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiTracker.ScanResultUpdater"

    .line 104
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

    goto :goto_1

    .line 106
    :cond_3
    invoke-static {}, Lcom/android/wifitrackerlib/ScanResultUpdater;->DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

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

    invoke-virtual {v2, v3, v1}, Lcom/samsung/wifitrackerlib/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
