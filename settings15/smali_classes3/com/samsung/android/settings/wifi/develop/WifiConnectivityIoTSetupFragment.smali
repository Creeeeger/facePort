.class public Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field public mContext:Landroid/content/Context;

.field public mIoTDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;

.field public mScanResultsLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mScanResultsLayoutTextView:Landroid/widget/TextView;

.field public mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiConnectivityIoTSetupFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170234

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "WifiConnectivityIoTSetupFragment"

    const-string v0, " onActivityCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment$1;

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "onCheckedChanged: "

    const-string v0, "WifiConnectivityIoTSetupFragment"

    invoke-static {p1, v0, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sec_wifi_iot_setup_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->setChecked(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mContext:Landroid/content/Context;

    const-string p1, "WifiConnectivityIoTSetupFragment"

    const-string v0, "onCreate called "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "iot_description_layout_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mIoTDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mIoTDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "This feature ensures that Mobile device stays connected to 2.4GHz band when Wi-Fi AP is configured with same name on multiple bands.This is useful when setting up IOT devices which are connected to 2.4GHz band. \nNOTE : This feature is reset by switching Wi-Fi ON/OFF"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "connected_ssid_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v2, "Connected SSID"

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSsidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v2, 0x5

    iput v2, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryMaxLines:I

    const-string p1, "bssid_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v3, "Matching BSSID"

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mBssidDetailsLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput v2, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryMaxLines:I

    const-string p1, "matching_scan_results_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mScanResultsLayoutTextView:Landroid/widget/TextView;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupFragment;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    return-void
.end method
