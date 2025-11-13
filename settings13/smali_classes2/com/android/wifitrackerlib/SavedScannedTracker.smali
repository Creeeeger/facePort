.class public Lcom/android/wifitrackerlib/SavedScannedTracker;
.super Lcom/android/wifitrackerlib/BaseWifiTracker;
.source "SavedScannedTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;
    }
.end annotation


# instance fields
.field private mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;

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
.method public static synthetic $r8$lambda$LR4DLqPdA9dN4trsjNYkBaOSFHQ(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updatePasspointWifiEntryConfigs$4(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T75ay-0MrGG_tUFuCU47NM12XtY(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updateStandardWifiEntryScans$0(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gv2-lTQAdQCt4phWWnzXngLCUjA(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updateStandardWifiEntryConfigs$3(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hHtbyE5L1D91zpSi8uuIHuGhUXs(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updateStandardWifiEntryConfigs$2(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ojVsh9IFvKw_Dpdxj8qQQ9i2OXk(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updatePasspointWifiEntryConfigs$5(Ljava/util/Map;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vFowo4ebcQE5EYYNczXmuZKQJc4(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->lambda$updateStandardWifiEntryScans$1(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V
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

    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/SavedScannedTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V
    .locals 16

    move-object/from16 v15, p0

    const-string v14, "SavedScannedTracker"

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

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    move-object/from16 v0, p13

    .line 123
    iput-object v0, v15, Lcom/android/wifitrackerlib/SavedScannedTracker;->mListener:Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->handleOnStart()V

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    return-void

    .line 349
    :cond_0
    iget-wide v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-wide v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 358
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 359
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updatePasspointWifiEntryConfigs$4(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;
    .locals 0

    .line 392
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePasspointWifiEntryConfigs$5(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 398
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 399
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updatePasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryConfigs$2(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 367
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryConfigs$3(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 373
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 375
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryScans$0(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 1

    .line 300
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 299
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateStandardWifiEntryScans$1(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyOnSavedWifiEntriesChanged()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mListener:Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;

    if-eqz v0, :cond_0

    .line 446
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnSubscriptionWifiEntriesChanged()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mListener:Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 427
    invoke-virtual {v1, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 428
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    iput-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 433
    invoke-virtual {v1, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 434
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    iput-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updatePasspointWifiEntryConfigs(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 388
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda2;-><init>()V

    .line 393
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 397
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 410
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 411
    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v11, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Z)V

    .line 411
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePasspointWifiEntryScans(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 308
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 312
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 314
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 315
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const/4 v5, 0x1

    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 322
    invoke-virtual {v3, v2, v4, v1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 328
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p1, v1, v1, v1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateStandardWifiEntryConfigs(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 363
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 367
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 368
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 371
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 379
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 380
    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v12, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 380
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateStandardWifiEntryScans(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 288
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda6;-><init>()V

    .line 292
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 294
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 303
    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance p1, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateWifiEntries()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 256
    :try_start_0
    iput-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 257
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 258
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iput-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 263
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    iput-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_1

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_4

    .line 268
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->setIsDefaultNetwork(Z)V

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 271
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 274
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SavedScannedTracker"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated SavedWifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

    .line 278
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SavedScannedTracker"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated SubscriptionWifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    .line 280
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->notifyOnSavedWifiEntriesChanged()V

    .line 284
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->notifyOnSubscriptionWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 282
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mSavedWifiEntries:Ljava/util/List;

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

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 200
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 202
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updatePasspointWifiEntryConfigs(Ljava/util/List;)V

    .line 203
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleDefaultRouteChanged()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    .line 245
    iget-boolean v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->setIsDefaultNetwork(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setIsLowQuality(Z)V

    :cond_1
    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/LinkProperties;)V

    :cond_0
    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 238
    iget-object p1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setIsLowQuality(Z)V

    :cond_1
    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 209
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "networkInfo"

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 211
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method protected handleOnStart()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateStandardWifiEntryConfigs(Ljava/util/List;)V

    .line 164
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updatePasspointWifiEntryConfigs(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 165
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->conditionallyUpdateScanResults(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 169
    invoke-direct {p0, v1, v3}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 170
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateWifiEntries()V

    .line 172
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 173
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 174
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 175
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_1

    .line 176
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->setIsDefaultNetwork(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setIsLowQuality(Z)V

    :cond_1
    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 191
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->conditionallyUpdateScanResults(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->conditionallyUpdateScanResults(Z)V

    .line 185
    invoke-direct {p0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->updateWifiEntries()V

    return-void
.end method
