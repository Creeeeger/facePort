.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

.field public mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

.field public mProgressMenu:Landroid/view/MenuItem;

.field public mRefreshMenu:Landroid/view/MenuItem;

.field public final mScanReceiver:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;

.field public mSelectedTabIndex:I

.field public mWaitingForScanResult:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/preference/PreferenceCategory;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCategory:[Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;

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

    const p0, 0x7f170231

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "wifiscanner"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiScanner;->getAvailableChannels(I)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->scanResultUpdated$1(Ljava/util/List;)V

    :cond_0
    const-string p1, "nearbywifi_tab_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiTabPreference;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    :cond_1
    const-string p1, "nearbywifi_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getCuInfo()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    const-string v1, "cu_bar_chart_24g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    const-string v1, "cu_bar_chart_5g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    const-string v1, "cu_bar_chart_6g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    const-string v1, "best_channel"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mBestChannel:Landroidx/preference/Preference;

    const-string v1, "nearbywifi_category_cu_24g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCategory:[Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "nearbywifi_category_cu_5g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "nearbywifi_category_cu_6g"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput v3, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    const v2, 0x7f080ad5

    iput v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBarShapeResId:I

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    const v1, 0x7f080ad4

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBarShapeResId:I

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    const v1, 0x7f080ad6

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBarShapeResId:I

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->setChannelRecommendation()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityCreated: mSelectedTabIndex="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mSelectedTabIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyWifi.MainFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->showTab(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$2;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    const v0, 0x7f0f0025

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0c6d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mRefreshMenu:Landroid/view/MenuItem;

    const v0, 0x7f0a0bca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mProgressMenu:Landroid/view/MenuItem;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupActionBarMenus: mWaitingForScanResult="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NearbyWifi.MainFragment"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mProgressMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0c6d

    if-ne v0, v1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NearbyWifi.MainFragment"

    const-string v1, "Scan requested"

    invoke-static {p1, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mProgressMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    return-void
.end method

.method public final scanResultUpdated$1(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->update(Ljava/util/List;)V

    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mSelectedTabIndex:I

    const-string v0, "NearbyWifi.MainFragment"

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "Update ChannelUtilPreference"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    if-eqz p1, :cond_6

    const-string p1, "NearbyWifi.ChannelUtilController"

    const-string v0, "Refresh Cu bar charts"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getCuInfo()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCuMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->setChannelRecommendation()V

    goto :goto_0

    :cond_4
    const-string p1, "Update NearbyWifiPreference"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    if-eqz p0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final showTab(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mNearbyWifiPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->showSsidList()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mChannelUtilController:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->setVisible(Z)V

    :goto_0
    return-void
.end method
