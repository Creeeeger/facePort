.class public Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field public mAggressiveEnabled:Z

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public final mDataRoamingObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

.field public mEnabled:Z

.field public mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

.field public mFilter:Landroid/content/IntentFilter;

.field public mIsStartedFromHintCard:Z

.field public final mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

.field public mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field public final mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

.field public mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

.field public mSnsSettingPref:Landroidx/preference/PreferenceScreen;

.field public mStartedFromHintCardTime:J

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsStartedFromHintCard:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mStartedFromHintCardTime:J

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;

    return-void
.end method


# virtual methods
.method public final finishSnsSettings()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x59

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "SalesCode"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo p1, "sns_excluded_device"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    const-string p1, "mode_normal_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string p1, "mode_aggressive_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string p1, "empty_general"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    const v2, 0x7f1436b6

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo v2, "wifi_switch_for_individual_apps"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isIndividualAppSupported()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    :cond_3
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Lcom/android/settings/widget/SettingsMainSwitchBar;Landroidx/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->setActionBarTitle()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const v0, 0x7f170263

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    move v2, p1

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartNetworkSwitchSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f14201d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d09b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(Landroid/view/View;Z)V

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartNetworkSwitchSettings"

    const-string v1, "Action bar up button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc2e

    const/16 v1, 0xc26

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "sns_excluded_device_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sns_excluded_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartNetworkSwitchSettings"

    const-string v1, "Excluded Network Preference Selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v1, 0x59

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1436b4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/16 v0, 0xc2e

    const/16 v1, 0xc30

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->setActionBarTitle()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const-string v2, "mobile_data"

    const/4 v3, 0x0

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v8, :cond_1

    iput-object v0, v7, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    iput-object v0, v8, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    iput-boolean v7, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5, v4, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const/16 p0, 0xc2e

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public final setActionBarTitle()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1436e5

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

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method
