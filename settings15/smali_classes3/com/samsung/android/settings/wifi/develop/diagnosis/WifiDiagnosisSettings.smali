.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;


# instance fields
.field public mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

.field public mAvailableCategory:Landroid/widget/TextView;

.field public mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

.field public mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

.field public mConnectedCategory:Landroid/widget/TextView;

.field public mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mEmptyView:Landroid/widget/TextView;

.field public mGoToManageNetwork:Landroid/widget/Button;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

.field public mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

.field public mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

.field public mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiDiagnosisSettings{"

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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v9, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    move-object v2, p1

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/samsung/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p1}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0d0a58

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p3}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object p3

    const v0, 0x7f0a0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableCategory:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    const p3, 0x7f0a0166

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p3, 0x7f0a03f8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    const p3, 0x7f0a03f7

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p3, 0x7f0a0f08

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f060738

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/16 v2, 0xf

    invoke-virtual {v0, v2, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0, v2, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const p3, 0x7f0a0a8c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    const p3, 0x7f0a06da

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries$3()V

    return-object p2
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries$3()V

    return-void
.end method

.method public final onSavedWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries$3()V

    return-void
.end method

.method public final onSubscriptionWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries$3()V

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled$2(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled$2(Z)V

    :goto_0
    return-void
.end method

.method public final setButtonEnabled$2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public final setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060738

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v1, 0xf

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public final updateStepLog()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateRouterHistoryLog(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v1, "WifiDiagnosisSettings"

    if-nez v0, :cond_0

    const-string p0, "[updateStepLog] mStepEntry is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[updateStepLog] SSID : "

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "[updateStepLog] SSID + key : "

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mLogs:Ljava/util/List;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final updateWifiEntries$3()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get new WifiEntries "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiDiagnosisSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled$2(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v1}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    const/16 v6, 0x8

    if-eqz v1, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "connected network "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    iput-object v1, v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->updateAllAccessPoints(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f1435f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f14355b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_5

    :cond_5
    move v0, v5

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableCategory:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    move v1, v5

    goto :goto_7

    :cond_7
    move v1, v6

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    move v5, v6

    :goto_8
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
