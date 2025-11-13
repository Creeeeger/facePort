.class public Lcom/samsung/android/settings/connection/AirplaneModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirplaneModeSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field mAirplaneModeDesc:Landroid/widget/TextView;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/AirplaneModeSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDescription(Lcom/samsung/android/settings/connection/AirplaneModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->setDescription()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 56
    new-instance v0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;-><init>(Lcom/samsung/android/settings/connection/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getAirPlaneModeEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "no_airplane_mode"

    .line 230
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method private hasAirPlaneModeRestriction(I)Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "no_airplane_mode"

    .line 235
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private setDescription()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AirplaneModeSettings"

    const-string v0, "setDescription() - getActivity() is null now."

    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_AIRPLANE_MODE_BY_ATT:Z

    if-eqz v0, :cond_1

    .line 110
    sget v0, Lcom/android/settings/R$string;->flight_mode_description_att:I

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget v0, Lcom/android/settings/R$string;->flight_mode_desc_wifi_tablet:I

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    sget v0, Lcom/android/settings/R$string;->flight_mode_desc_lte_without_call_feature_tablet:I

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    sget v0, Lcom/android/settings/R$string;->flight_mode_enable_popup_more_specific:I

    goto :goto_0

    .line 120
    :cond_4
    sget v0, Lcom/android/settings/R$string;->airplane_mode_summary_wifi_only_for_activity:I

    .line 123
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mAirplaneModeDesc:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 226
    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xce4

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 85
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeEnabler;

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->airplane_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 92
    sget p2, Lcom/android/settings/R$layout;->sec_airplane_mode_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 93
    sget p2, Lcom/android/settings/R$id;->airplane_mode_desc_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mAirplaneModeDesc:Landroid/widget/TextView;

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->setDescription()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 204
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 150
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->getAirPlaneModeEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 151
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->hasAirPlaneModeRestriction(I)Z

    move-result v0

    .line 152
    iget-object v2, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v2

    const-string v3, "false"

    .line 155
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v6, "isAirplaneModeAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-eq v3, v1, :cond_1

    if-eq v3, v4, :cond_1

    .line 168
    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 177
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 180
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 180
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "GATE"

    if-nez p0, :cond_4

    const-string p0, "<GATE-M> AIRPLANE_MODE_STATUS_OFF </GATE-M>"

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "<GATE-M> AIRPLANE_MODE_STATUS_ON </GATE-M>"

    .line 187
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->airplane_mode_toast_impossible_during_call:I

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz p0, :cond_2

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneMode(Z)V

    :cond_2
    return-void
.end method
