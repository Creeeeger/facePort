.class public Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoConnectHotspotSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

.field private mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method static bridge synthetic -$$Nest$misDisconnectWhenNotInUSeSwitchOn(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->isDisconnectWhenNotInUSeSwitchOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCheckedToDisconnectWhenNotInUseSwitch(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setCheckedToDisconnectWhenNotInUseSwitch(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getSummartForDisconnectWhenNotInUseSwitch()I
    .locals 0

    .line 140
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 141
    sget p0, Lcom/android/settings/R$string;->wifi_disconnect_when_not_in_use_description_tablet:I

    return p0

    .line 143
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_disconnect_when_not_in_use_description_phone:I

    return p0
.end method

.method private initializedDisconnectWhenNotInUseSwitchPreference()V
    .locals 2

    const-string v0, "disconnect_when_not_in_use"

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->getSummartForDisconnectWhenNotInUseSwitch()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

    return-void
.end method

.method private initializedRadioButtonPreference()V
    .locals 1

    const-string v0, "auto_connect_hotspot_never_option"

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "auto_connect_hotspot_ask_before_connecting_option"

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "auto_connect_hotspot_always_option"

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v0

    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    return-void
.end method

.method private isDisconnectWhenNotInUSeSwitchOn()Z
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshDisconnectWhenNotInUseSwitch()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->isDisconnectWhenNotInUSeSwitchOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private setAutoConnectHotspotRadioButton(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private setCheckedToDisconnectWhenNotInUseSwitch(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotLCDSettings(I)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/android/settings/R$xml;->sec_wifi_ap_wifi_auto_connect_hotspot_screen:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mActivity:Landroid/app/Activity;

    .line 55
    sget v0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_title:I

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->initializedRadioButtonPreference()V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->initializedDisconnectWhenNotInUseSwitchPreference()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "auto_connect_hotspot_never_option"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "auto_connect_hotspot_always_option"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "auto_connect_hotspot_ask_before_connecting_option"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 102
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    .line 103
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    goto :goto_1

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    .line 111
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    goto :goto_1

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    .line 107
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    .line 115
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b09cba9 -> :sswitch_2
        -0x203250f0 -> :sswitch_1
        0x3b1631bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
