.class public Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Hotspot20Settings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private final VENDOR_HOTSPOT_PROFILE:Ljava/lang/String;

.field private mHasSwitch:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPasspointConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mScreenId:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$mgetPasspointConfigurations(Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->getPasspointConfigurations()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WIFI_260"

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreenId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mHasSwitch:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "Vendor Hotspot2.0 Profile"

    .line 61
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->VENDOR_HOTSPOT_PROFILE:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private exitActivity()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    return-void
.end method

.method private getPasspointConfigurations()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mPasspointConfigs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 163
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Vendor Hotspot2.0 Profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    new-instance v2, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "WIFI_260"

    invoke-direct {v2, v3, v1, v4, p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->setEmptyMessage()V

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caught exception while setPasspointPreferenceCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotspot20Settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setEmptyMessage()V
    .locals 3

    .line 179
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;-><init>(Landroid/content/Context;)V

    .line 180
    sget v1, Lcom/android/settings/R$string;->wifi_no_saved_network:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 183
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public initSwitchBar()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPasspointEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 108
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mHasSwitch:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget p1, Lcom/android/settings/R$xml;->sec_hotspot20_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->exitActivity()V

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "MENU_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mHasSwitch:Z

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->getPasspointConfigurations()V

    const-string v0, "WIFI_260"

    .line 116
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->initSwitchBar()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_hotspot20_enable"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->exitActivity()V

    return-void
.end method
