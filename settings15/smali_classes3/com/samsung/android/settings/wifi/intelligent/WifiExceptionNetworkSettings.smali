.class public Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mExceptionList:Landroidx/preference/SecPreferenceCategory;

.field public final mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

.field public final mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mWcmConfigChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;

.field public mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static -$$Nest$mfinishWifiExceptionSettings(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->setActionBarTitle$2()V

    const p1, 0x7f17029c

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo p1, "wcm_exception_desc"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    const-string/jumbo p1, "wcm_exception_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    const-string p1, "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmConfigChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmConfigChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->setActionBarTitle$2()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const/16 p0, 0xc30

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public final setActionBarTitle$2()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1436b4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "action_bar"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method

.method public final updateExcludedNetworks()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    const v1, 0x7f0d0c22

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    const v1, 0x7f1436b5

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "WifiExceptionNetworkSettings"

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    iget-boolean v8, v5, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v1, :cond_3

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_3

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_3

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v8, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mContext:Landroid/content/Context;

    iput-object v7, v8, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const v7, 0x7f0d095d

    invoke-virtual {v8, v7}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error calling configuredNetworks "

    invoke-static {v1, v0, v4}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "No Item"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1436b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f15094f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    :cond_5
    return-void
.end method
