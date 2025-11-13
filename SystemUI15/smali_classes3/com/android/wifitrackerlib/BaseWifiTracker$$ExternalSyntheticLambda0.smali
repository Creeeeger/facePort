.class public final synthetic Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, [Landroid/net/wifi/WifiScanner$ScanData;

    iget-object v2, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    sget v3, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->$r8$clinit:I

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->shouldScan()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-boolean v2, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-object v2, v2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v2, v2, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-static {v5}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    iget-object p0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v3, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->evictOldScans()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    new-instance v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    if-eqz v6, :cond_4

    iget-wide v6, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mScanResultsBySsidAndBssid:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "resultsUpdated"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleScanResultsAvailableAction(Landroid/content/Intent;)V

    iget-object p0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->scanLoop()V

    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mLifecycleObserver:Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
