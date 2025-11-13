.class public Lcom/samsung/android/settings/DomesticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DomesticSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mTwoPhonePreference:Landroidx/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/android/settings/R$xml;->sec_domestic_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "v_coloring"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 73
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_1

    .line 74
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMptcp()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string/jumbo v0, "ro.product.first_api_level"

    .line 75
    invoke-static {v0, p1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    new-instance p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "giga_lte"

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 83
    const-class v0, Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 84
    sget v0, Lcom/android/settings/R$string;->giga_lte_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 85
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isKTPlayGameServiceAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "kt_play_game"

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    const-string/jumbo p1, "two_phone"

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroidx/preference/PreferenceScreen;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->checkKTservicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "kt_wifi_settings"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 98
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->isSupportTwoPhone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "giga_lte"

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    sget v2, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    .line 109
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 113
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroidx/preference/PreferenceScreen;

    if-eqz p0, :cond_3

    xor-int/lit8 v0, v1, 0x1

    .line 115
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
