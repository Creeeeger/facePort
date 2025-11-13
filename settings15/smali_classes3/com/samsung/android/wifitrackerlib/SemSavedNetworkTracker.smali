.class public final Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;
.super Lcom/android/wifitrackerlib/BaseWifiTracker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFilter:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

.field public final mListener:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;

.field public final mLock:Ljava/lang/Object;

.field public final mSavedWifiEntries:Ljava/util/List;

.field public final mStandardWifiEntryCache:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;)V
    .locals 16

    move-object/from16 v15, p0

    new-instance v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    const-string v14, "SemSavedNetworkTracker"

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/wifitrackerlib/BaseWifiTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    move-object/from16 v0, p8

    iput-object v0, v15, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mListener:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;

    move-object/from16 v0, p9

    iput-object v0, v15, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mFilter:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

    return-void
.end method


# virtual methods
.method public final getAllWifiEntries$3()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getSavedWifiEntries()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getAllWifiEntries$3()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getAllWifiEntries$3()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getAllWifiEntries$3()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->updateWifiEntries$2()V

    return-void
.end method

.method public final handleNetworkLost(Landroid/net/Network;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getAllWifiEntries$3()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->updateWifiEntries$2()V

    return-void
.end method

.method public final handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getAllWifiEntries$3()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onPrimaryWifiInfoChanged(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final handleOnStart()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const-string v1, "Config list should not be null!"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v12, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    iget-object v10, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v2, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    :cond_2
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3, v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->forceUpdateNetworkInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->updateWifiEntries$2()V

    return-void
.end method

.method public final handleWifiStateChangedAction()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->updateWifiEntries$2()V

    return-void
.end method

.method public final updateWifiEntries$2()V
    .locals 6

    const-string v0, "Updated SavedWifiEntries: "

    iget-object v1, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mStandardWifiEntryCache:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mFilter:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

    iget v3, v3, Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$ManageNetworkComparator$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    :goto_0
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v2, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v2, :cond_0

    const-string v2, "SemSavedNetworkTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->mListener:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
