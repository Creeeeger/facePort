.class public Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;


# static fields
.field public static final intentFilter:Landroid/content/IntentFilter;


# instance fields
.field public final broadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;

.field public final connectionStatusUpdateHandler:Landroid/os/Handler;

.field public final connectionStatusUpdateRunnable:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$1;

.field public mContext:Landroid/content/Context;

.field public mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

.field public mWifiState:I

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWifiState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->connectionStatusUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->connectionStatusUpdateRunnable:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->broadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiConnectivityLabsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170225

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->setHost(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiConnectivityLabsFragment{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$3;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v9, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    sget-object v11, Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter;->LABS_COMPARATOR:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

    move-object v2, p1

    move-object v10, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_wifi_developer_rssi_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "labs_filter_level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WIFI_LABS"

    const-string v2, "2001"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getDeveloperSortingStyle(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "labs_sorting_style"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "2002"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->broadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->isWifiDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->broadcastReceiver:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWifiState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->updateConnectionStatusPreference(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->updateSavedNetworksPreference()V

    :cond_1
    return-void
.end method

.method public final onSavedWifiEntriesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->updateSavedNetworksPreference()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->onSavedWifiEntriesChanged()V

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 0

    return-void
.end method

.method public final updateConnectionStatusPreference(Z)V
    .locals 7

    const-string v0, "WifiConnectivityLabsFragment"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :goto_0
    move v5, v1

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    if-lt v2, v4, :cond_5

    aget-object v2, p1, v5

    const-string v6, "Connected"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    aget-object p1, p1, v5

    const-string v2, "Enabled"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v5

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWifiState:I

    if-eq v2, p1, :cond_7

    if-eq v2, v3, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    const-string v2, "Do not refreshPreferences if state is unknown."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mWifiState:I

    goto :goto_3

    :cond_7
    if-ne v2, v4, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    const-string/jumbo p1, "updateConnectionStatusPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "connection_status_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->updatePreference(Z)V

    :cond_9
    return-void
.end method

.method public final updateSavedNetworksPreference()V
    .locals 14

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    move v4, v1

    :goto_0
    if-gt v4, v3, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v5}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v5

    if-ne v4, v2, :cond_0

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/savednetwork/UnusedWifiEntryCategory;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_0
    if-ne v4, v3, :cond_1

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/savednetwork/WeakWifiEntryCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WeakWifiEntryCategory;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/savednetwork/AllWifiEntryCategory;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eq v4, v2, :cond_3

    if-eq v4, v3, :cond_2

    sget-object v8, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->ALL_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->OPEN_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->WEP_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->LONG_UNUSED_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wifitrackerlib/WifiEntry;

    move v10, v1

    :goto_3
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;->matches(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    aput v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateSavedNetworksPreference "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiConnectivityLabsFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "saved_networks_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsSavedNetworksPreference;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsSavedNetworksPreference;->updatePreference(Z[I)V

    :cond_8
    return-void
.end method
