.class public Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentTabIndex:I

.field public mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

.field public mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

.field public mTabPreference:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mCurrentTabIndex:I

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170235

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiLabsNetworkInformationFragment{"

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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v9, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    sget-object v11, Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter;->LABS_COMPARATOR:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

    move-object v2, p1

    move-object v10, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    const-string p1, "network_information_tab_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mTabPreference:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "filter"

    const-string v1, "all"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "weak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mCurrentTabIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mTabPreference:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;

    iput p1, v0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mPosition:I

    :cond_2
    const-string p1, "network_information_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onSavedWifiEntriesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->updateWifiEntries$4()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->onSavedWifiEntriesChanged()V

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->updateWifiEntries$4()V

    return-void
.end method

.method public final updateWifiEntries$4()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mCurrentTabIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/savednetwork/UnusedWifiEntryCategory;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/savednetwork/WeakWifiEntryCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WeakWifiEntryCategory;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/wifi/develop/savednetwork/AllWifiEntryCategory;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->ALL_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->OPEN_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->WEP_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->LONG_UNUSED_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v7, v6, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wifitrackerlib/WifiEntry;

    move v7, v2

    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;->getCategoryTitles()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v9, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;->matches(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v6}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mList:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsPreferenceCategory;

    new-instance v1, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f142895

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_a
    return-void
.end method
