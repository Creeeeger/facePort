.class public Lcom/android/settings/wifi/slice/WifiScanWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker;",
        "Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
.end annotation


# instance fields
.field final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field protected mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-direct {v0, p2, p1, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object p1, v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public getApRowCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public final onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onSlicePinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method public onSliceUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final onUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method public updateResults()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    new-instance v2, Lcom/android/settings/wifi/slice/WifiSliceItem;

    iget-object v3, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/wifi/slice/WifiSliceItem;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->getApRowCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    new-instance v3, Lcom/android/settings/wifi/slice/WifiSliceItem;

    iget-object v4, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/settings/wifi/slice/WifiSliceItem;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    :cond_7
    return-void
.end method
