.class public Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartNetworkSwitchSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field private mAggressiveEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mEnabled:Z

.field private mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsStartedFromHintCard:Z

.field private mIsSupportAggMode:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

.field private mSnsSettingPref:Landroidx/preference/PreferenceScreen;

.field private mStartedFromHintCardTime:J

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$IS0FkSAO_uGI3ueuLPoHtBvk2P8(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->lambda$onCreate$0(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishSnsSettings(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 410
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsStartedFromHintCard:Z

    const-wide/16 v0, -0x1

    .line 120
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mStartedFromHintCardTime:J

    .line 122
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$4;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private finishSnsSettings()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 394
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

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "hint_card"

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsStartedFromHintCard:Z

    const-string v0, "hint_card_timestamp"

    const-wide/16 v1, 0x0

    .line 185
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mStartedFromHintCardTime:J

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() hint_card:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->isStartedFromHintCard()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mStartedFromHintCardTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartNetworkSwitchSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setActionBarTitle()V
    .locals 5

    .line 359
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data:I

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 368
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x59

    return p0
.end method

.method public getTimeStartedByHintCard()J
    .locals 2

    .line 407
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mStartedFromHintCardTime:J

    return-wide v0
.end method

.method public isStartedFromHintCard()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsStartedFromHintCard:Z

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "SalesCode"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vzw"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string p1, "sns_excluded_device"

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    const-string p1, "mode_normal_mode"

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string p1, "mode_aggressive_mode"

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string p1, "empty_general"

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    .line 243
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->wifi_smart_network_switch_excluded_networks_body_tablet:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 247
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 248
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 250
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroidx/preference/PreferenceScreen;

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroidx/preference/SecPreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "wifi_switch_for_individual_apps"

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isIndividualAppSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    .line 270
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->setActionBarTitle()V

    .line 156
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vzw"

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 161
    sget v1, Lcom/android/settings/R$xml;->smart_network_switch_settings:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    xor-int/2addr v0, p1

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

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

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    move v2, p1

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartNetworkSwitchSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_wifi_adaptive_wifi_setting:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSAScreenId:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_sns_explain_intelligent:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 319
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartNetworkSwitchSettings"

    const-string v1, "Action bar up button"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc2e

    const/16 v1, 0xc26

    .line 328
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 330
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->pause()V

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 335
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "sns_excluded_device_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sns_excluded_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartNetworkSwitchSettings"

    const-string v1, "Excluded Network Preference Selected"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_smart_network_switch_excluded_networks:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/16 v0, 0xc2e

    const/16 v1, 0xc30

    .line 351
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 355
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 288
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->setActionBarTitle()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->resume()V

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 278
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const/16 p0, 0xc2e

    .line 279
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method
