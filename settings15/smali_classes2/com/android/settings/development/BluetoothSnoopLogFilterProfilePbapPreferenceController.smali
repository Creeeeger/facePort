.class public final Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BTSNOOP_LOG_PROFILE_FILTER_MODE_DISABLED_INDEX:I = 0x0

.field static final BTSNOOP_LOG_PROFILE_FILTER_MODE_FULL_FILTER_INDEX:I = 0x3

.field static final BTSNOOP_LOG_PROFILE_FILTER_MODE_HEADER_INDEX:I = 0x2

.field static final BTSNOOP_LOG_PROFILE_FILTER_MODE_MAGIC_INDEX:I = 0x1


# instance fields
.field public final mListEntries:[Ljava/lang/String;

.field public final mListValues:[Ljava/lang/String;

.field public final mProfilesFilterDisabledEntry:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140857

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mProfilesFilterDisabledEntry:Ljava/lang/String;

    return-void
.end method

.method public static isSnoopLogModeFilteredEnabled()Z
    .locals 2

    invoke-static {}, Landroid/sysprop/BluetoothProperties;->snoop_log_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/sysprop/BluetoothProperties$snoop_log_mode_values;->DISABLED:Landroid/sysprop/BluetoothProperties$snoop_log_mode_values;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/sysprop/BluetoothProperties$snoop_log_mode_values;->FILTERED:Landroid/sysprop/BluetoothProperties$snoop_log_mode_values;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bt_hci_snoop_log_filter_pbap"

    return-object p0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    sget-object v0, Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;->DISABLED:Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;

    invoke-static {v0}, Landroid/sysprop/BluetoothProperties;->snoop_log_filter_profile_pbap(Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;)V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListValues:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListEntries:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final onDeveloperOptionsSwitchEnabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->isSnoopLogModeFilteredEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;->valueOf(Ljava/lang/String;)Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/BluetoothProperties;->snoop_log_filter_profile_pbap(Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;)V

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-static {}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->isSnoopLogModeFilteredEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Landroid/sysprop/BluetoothProperties;->snoop_log_filter_profile_pbap()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;->DISABLED:Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;->valueOf(Ljava/lang/String;)Landroid/sysprop/BluetoothProperties$snoop_log_filter_profile_pbap_values;

    move-result-object v4

    if-ne v0, v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mListEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->mProfilesFilterDisabledEntry:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
