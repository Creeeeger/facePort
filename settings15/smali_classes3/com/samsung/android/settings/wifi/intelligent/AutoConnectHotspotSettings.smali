.class public Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

.field public mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f170223

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f143478

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "auto_connect_hotspot_header"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const v0, 0x7f143473

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p1, "auto_connect_hotspot_never_option"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "auto_connect_hotspot_ask_before_connecting_option"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "auto_connect_hotspot_always_option"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    const-string p1, "disconnect_when_not_in_use"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f143505

    goto :goto_0

    :cond_0
    const v0, 0x7f143504

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "auto_connect_hotspot_never_option"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "auto_connect_hotspot_always_option"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "auto_connect_hotspot_ask_before_connecting_option"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->setAutoConnectHotspotRadioButton(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

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

.method public final refreshDisconnectWhenNotInUseSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mDisconnectWhenNotInUseSwitch:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final setAutoConnectHotspotRadioButton(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAskBeforeConnecting:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mAutoConnectHotspotAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
