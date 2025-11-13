.class public Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiExceptionNetworkSettings.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExceptionList:Landroidx/preference/SecPreferenceCategory;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$mfinishWifiExceptionSettings(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->finishWifiExceptionSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExcludedNetworks(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WifiExceptionNetworkSettings"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 215
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private finishWifiExceptionSettings()V
    .locals 1

    .line 85
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 237
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private setActionBarTitle()V
    .locals 5

    .line 202
    sget v0, Lcom/android/settings/R$string;->wifi_smart_network_switch_excluded_networks:I

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateExcludedNetworks()V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    sget v1, Lcom/android/settings/R$layout;->wifi_excluded_networks_settings_exception_list:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    sget v1, Lcom/android/settings/R$string;->wifi_smart_network_switch_excluded_networks_body:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const-string v2, "WifiExceptionNetworkSettings"

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 148
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 150
    iget-boolean v6, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 152
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config SSID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v6, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 156
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling configuredNetworks "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "No Item"

    .line 166
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    sget v0, Lcom/android/settings/R$layout;->wifi_excluded_networks_settings_no_item:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->setActionBarTitle()V

    .line 99
    sget p1, Lcom/android/settings/R$xml;->wifi_excluded_networks_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p1, "wcm_exception_desc"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mWcmExceptionDesc:Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;

    const-string p1, "wcm_exception_list"

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mExceptionList:Landroidx/preference/SecPreferenceCategory;

    .line 106
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->setActionBarTitle()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const/16 p0, 0xc30

    .line 175
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method
