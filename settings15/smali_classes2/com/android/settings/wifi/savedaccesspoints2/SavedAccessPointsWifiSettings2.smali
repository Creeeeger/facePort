.class public Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SavedAccessPoints2"


# instance fields
.field mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SavedAccessPoints2"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170299

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->setHost(Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;)Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    const-class p1, Lcom/android/settings/wifi/savedaccesspoints2/SubscribedAccessPointsPreferenceController2;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/savedaccesspoints2/SubscribedAccessPointsPreferenceController2;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->setHost(Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;)Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedAccessPoints2{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    new-instance p1, Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v0, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/wifitrackerlib/SavedNetworkTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onSavedWifiEntriesChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSavedWifiEntries:Ljava/util/List;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->displayPreference(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->onSavedWifiEntriesChanged()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->onSubscriptionWifiEntriesChanged()V

    return-void
.end method

.method public final onSubscriptionWifiEntriesChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints2/SubscribedAccessPointsPreferenceController2;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/savedaccesspoints2/SubscribedAccessPointsPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    iget-object v2, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker;->mSubscriptionWifiEntries:Ljava/util/List;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->displayPreference(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onWifiStateChanged()V
    .locals 0

    return-void
.end method
