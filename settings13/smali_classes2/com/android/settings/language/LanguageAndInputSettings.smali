.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 146
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    sget v1, Lcom/android/settings/R$xml;->language_and_input:I

    invoke-direct {v0, v1}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v1, Lcom/android/settings/language/PhoneLanguagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/language/PhoneLanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v3, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "keyboards_category"

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    .line 118
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 117
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 124
    new-instance p1, Lcom/android/settings/language/TtsPreferenceController;

    const-string/jumbo v3, "tts_settings_summary"

    invoke-direct {p1, p0, v3}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v3, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v5, "speech_category"

    invoke-direct {v3, p0, v5}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v4, v4, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v2, v4, v6

    aput-object p1, v4, v1

    .line 130
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 129
    invoke-virtual {v3, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p1, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LangAndInputSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ee

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 95
    sget p0, Lcom/android/settings/R$xml;->language_and_input:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget p1, Lcom/android/settings/R$string;->language_and_input_for_work_category_title:I

    const-string v0, "language_and_input_for_work_category"

    const-string v1, "Settings.WORK_PROFILE_KEYBOARDS_AND_TOOLS"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget p1, Lcom/android/settings/R$string;->spellcheckers_settings_for_work_title:I

    const-string/jumbo v0, "spellcheckers_settings_for_work_pref"

    const-string v1, "Settings.SPELL_CHECKER_FOR_WORK"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget p1, Lcom/android/settings/R$string;->user_dict_settings_for_work_title:I

    const-string/jumbo v0, "user_dictionary_settings_for_work_pref"

    const-string v1, "Settings.PERSONAL_DICTIONARY_FOR_WORK"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    sget v0, Lcom/android/settings/R$string;->language_settings:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
