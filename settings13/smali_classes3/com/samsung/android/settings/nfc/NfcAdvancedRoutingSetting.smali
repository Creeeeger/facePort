.class public Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 62
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 6

    .line 165
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 171
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_nfc_advanced_settings:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "UICC"

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "DH"

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "ESE"

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "AUTO_SELECT"

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 178
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->supportSim(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->supportEse(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v3, 0x1

    const-string v4, "ro.vendor.nfc.support.othercategory"

    if-eqz v2, :cond_3

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 188
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 189
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 190
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 193
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 195
    invoke-virtual {v3}, Landroid/nfc/cardemulation/CardEmulation;->supportsAutoRouting()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    move-object v1, v2

    .line 198
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->handleRoutingState(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_9

    const-string p0, "NfcAdvancedRoutingSetting"

    const-string v1, "Exception occured - getDefaultRoutingDestination"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-object v0
.end method

.method private getGsimItemNo(Ljava/lang/String;)I
    .locals 0

    const-string p0, "UICC"

    .line 232
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "DH"

    .line 234
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "ESE"

    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method private handleRoutingState(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UICC"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 211
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "DH"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 214
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 216
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "ESE"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 219
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 220
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 221
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 223
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mUiccPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 224
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 225
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_f
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe49

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportRoutingSettings(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "NfcAdvancedRoutingSetting"

    const-string v0, "This device does not support Default NFC Method"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    const-string v0, "NfcAdvancedRoutingSetting"

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->handleRoutingState(Ljava/lang/String;)V

    .line 123
    sget-boolean v1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTO_SELECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/CardEmulation;->enableAutoRouting()Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0xe4a

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getGsimItemNo(Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 131
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_4

    const-string p0, "isActivityEmbedded True"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "isActivityEmbedded False"

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method
