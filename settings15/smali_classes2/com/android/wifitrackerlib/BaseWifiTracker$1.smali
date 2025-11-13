.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    sget-boolean p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WIFI_STATE_CHANGED_ACTION : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-boolean p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    iput-boolean v2, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_3

    if-eqz v2, :cond_4

    iget-boolean p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v0, "Scanning started"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->scanLoop()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->stopScanning()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;I)V

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleWifiStateChangedAction()V

    goto/16 :goto_b

    :cond_6
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-boolean v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_a

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkKey;

    iget-object v8, v7, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v8, v8, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v7, v7, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_a

    :cond_9
    iget-object v6, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v6, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_a

    :cond_a
    iget-object v6, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-boolean v3, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v2

    goto :goto_3

    :cond_b
    const-string v6, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_c

    const-string v6, "WifiTracker.WifiWifiQoSScoreCache"

    const-string v7, "------ Add scored data start -----"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v9, "networkType"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "levelMax-2"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "levelMax-1"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "levelMax"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    filled-new-array {v10, v11, v8}, [I

    move-result-object v8

    new-instance v10, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;

    invoke-direct {v10, v7, v9, v8}, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;-><init>(Ljava/lang/String;I[I)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    if-ne v9, v1, :cond_e

    goto :goto_8

    :cond_e
    iget-object v8, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v9

    if-eqz v9, :cond_f

    move v9, v2

    goto :goto_5

    :cond_f
    const-string v9, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-static {v9, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    :goto_5
    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    const-string v11, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-virtual {v10}, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v12, v9, Lcom/samsung/android/wifitrackerlib/LogUtils;->isProductDev:Z

    if-eqz v12, :cond_10

    invoke-virtual {v9, v10}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_10
    :goto_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    goto :goto_8

    :goto_7
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_11
    :goto_8
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    :goto_9
    if-eqz v2, :cond_14

    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    const-string v1, "------ Add scored data end -----"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " key set are removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    if-eqz p1, :cond_15

    iget-boolean v0, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$8;)V

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker$8;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_15
    :goto_a
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleScanResultsAvailableAction(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->semNotifyScanStateChanged(I)V

    goto :goto_b

    :cond_16
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V

    goto :goto_b

    :cond_17
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    goto :goto_b

    :cond_18
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleRssiChangedAction()V

    goto :goto_b

    :cond_19
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const-string p1, "subscription"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultSubscriptionChanged(I)V

    :cond_1a
    :goto_b
    return-void
.end method
