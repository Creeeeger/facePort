.class public Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mControlSpace:Landroidx/preference/SecSwitchPreference;

.field public mLeftAltShift:Landroidx/preference/SecSwitchPreference;

.field public mShiftSpace:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

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
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f170164

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "shift_space"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    const-string p1, "control_space"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    const-string p1, "leftalt_shift"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroidx/fragment/app/FragmentActivity;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroidx/fragment/app/FragmentActivity;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroidx/fragment/app/FragmentActivity;I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreferenceChange Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_language_change_combination_key"

    const/4 v3, 0x7

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    or-int/2addr p1, v0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v1
.end method
