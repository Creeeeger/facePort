.class public final Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

.field public final mFilter:Landroid/content/IntentFilter;

.field public mIsSwitchForIndividualAppsEnabled:Z

.field public final mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

.field public final mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

.field public final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Lcom/android/settings/widget/SettingsMainSwitchBar;Landroidx/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    const-string p3, "WifiSmartNetworkSwitchEnabler"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    invoke-virtual {p6, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Switch for individual apps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    invoke-virtual {p6, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const p6, 0x7f14201d

    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    new-instance p6, Landroid/content/IntentFilter;

    invoke-direct {p6}, Landroid/content/IntentFilter;-><init>()V

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {p6, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    if-ne p6, v0, :cond_2

    move p6, v0

    goto :goto_1

    :cond_2
    move p6, v1

    :goto_1
    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v2, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-direct {p6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :goto_2
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    iput-object p0, p5, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    iput-object p0, p4, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    :cond_4
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_num_of_switch_to_mobile_data_toggle"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SNS On pressed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    const-string p0, "SNS Off pressed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const/16 p0, 0xc2e

    const/16 p1, 0xc2f

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public final updateRadioGroup()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final updateSmartNetworkSwitchServiceCheck()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_e
    :goto_1
    return-void
.end method
