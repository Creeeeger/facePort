.class public final Lcom/android/settings/wifi/helper/SavedWifiHelper;
.super Lcom/android/settings/wifi/helper/WifiTrackerBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sTestInstances:Ljava/util/Map;


# instance fields
.field public final mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/helper/SavedWifiHelper;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/wifitrackerlib/SavedNetworkTracker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/helper/WifiTrackerBase;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/os/HandlerThread;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/helper/SavedWifiHelper;->createSavedNetworkTracker(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)Lcom/android/wifitrackerlib/SavedNetworkTracker;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/android/settings/wifi/helper/SavedWifiHelper;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    return-void
.end method

.method public static setTestInstance(Landroid/content/Context;Lcom/android/settings/wifi/helper/SavedWifiHelper;)V
    .locals 4

    const-string v0, "Set a test instance by context:"

    sget-object v1, Lcom/android/settings/wifi/helper/SavedWifiHelper;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/settings/wifi/helper/SavedWifiHelper;->sTestInstances:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/android/settings/wifi/helper/SavedWifiHelper;->sTestInstances:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "SavedWifiHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/wifi/helper/SavedWifiHelper;->sTestInstances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public createSavedNetworkTracker(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)Lcom/android/wifitrackerlib/SavedNetworkTracker;
    .locals 10

    new-instance v9, Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/settings/wifi/helper/WifiTrackerBase;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wifi/helper/WifiTrackerBase;->ELAPSED_REALTIME_CLOCK:Lcom/android/settings/wifi/helper/WifiTrackerBase$1;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/wifitrackerlib/SavedNetworkTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    return-object v9
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SavedWifiHelper"

    return-object p0
.end method

.method public final isCertificateInUse(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/helper/SavedWifiHelper;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getNetworkSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
