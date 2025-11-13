.class public Lcom/android/wifitrackerlib/SavedNetworkTracker;
.super Lcom/android/wifitrackerlib/BaseWifiTracker;
.source "SavedNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mPasspointWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipUpdate:Z

.field private final mStandardWifiEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9kr0JdvZ7YexEdopfPUfWhym_w4(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->lambda$updateStandardWifiEntryConfigs$0(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GV9idimUU1YIqbDygf9BgC3EJy0(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->lambda$updateStandardWifiEntryConfigs$1(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V
    .locals 14

    .line 103
    new-instance v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/SavedNetworkTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V
    .locals 16

    move-object/from16 v15, p0

    const-string v14, "SavedNetworkTracker"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 120
    invoke-direct/range {v0 .. v14}, Lcom/android/wifitrackerlib/BaseWifiTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSkipUpdate:Z

    move-object/from16 v0, p13

    .line 123
    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mListener:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->handleOnStart()V

    return-void
.end method

.method private static synthetic lambda$updateStandardWifiEntryConfigs$0(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryConfigs$1(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 210
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private notifyOnSavedWifiEntriesChanged()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mListener:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    if-eqz v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateStandardWifiEntryConfigs(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 200
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 204
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 205
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 208
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 217
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v11, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 218
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 217
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWifiEntries()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SavedNetworkTracker"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated SavedWifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    .line 192
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->notifyOnSavedWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public changeUpdateStatus(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSkipUpdate:Z

    return-void
.end method

.method public forceUpdateWifiConfigurations()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSkipUpdate:Z

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 251
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateWifiEntries()V

    return-void
.end method

.method public getSavedWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSubscriptionWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 176
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 178
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 157
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 169
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->updateWifiEntries()V

    return-void
.end method
