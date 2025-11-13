.class public Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChangeLanguageShortcutOptionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mControlSpace:Landroidx/preference/SecSwitchPreference;

.field private mLeftAltShift:Landroidx/preference/SecSwitchPreference;

.field private mShiftSpace:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 94
    new-instance v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 2

    const-string v0, "shift_space"

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    const-string v0, "control_space"

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    const-string v0, "leftalt_shift"

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableShiftSpace(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCtrlSpace(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableLeftAltShift(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/android/settings/R$xml;->sec_change_language_shortcut_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->initPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 64
    sget-object v0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceChange Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mShiftSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mControlSpace:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->mLeftAltShift:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 76
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->setCombinationKeyState(Landroid/content/Context;IZ)V

    return v1
.end method
