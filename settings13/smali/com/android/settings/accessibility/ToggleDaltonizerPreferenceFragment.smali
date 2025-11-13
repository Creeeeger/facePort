.class public final Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final sControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-DwhmMRSa_6UL9GdV7xmnx1QEbE(Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    .line 251
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_daltonizer_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
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

    .line 67
    sget-object v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    sget v1, Lcom/android/settings/R$array;->daltonizer_mode_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 73
    sget-object v2, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    new-instance v3, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method private updateFooterPreference()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_daltonizer_about_title:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->accessibility_daltonizer_footer_learn_more_content_description:I

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getHelpResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setupHelpLink(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 174
    sget p0, Lcom/android/settings/R$string;->help_url_color_correction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method protected getPreferenceOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "daltonizer_preview"

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "empty_category"

    .line 130
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "use_service"

    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "daltonizer_mode_category"

    .line 134
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "general_categories"

    .line 141
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "html_description"

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 179
    sget p0, Lcom/android/settings/R$xml;->accessibility_daltonizer_settings:I

    return p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 221
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->accessibility_display_daltonizer_preference_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTileComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 232
    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object p0
.end method

.method getTileTooltipContent(I)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    .line 238
    sget p1, Lcom/android/settings/R$string;->accessibility_color_correction_qs_tooltip_content:I

    goto :goto_0

    .line 239
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_color_correction_auto_added_qs_tooltip_content:I

    .line 237
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getUserShortcutTypes()I
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Landroidx/preference/Preference;)V
    .locals 1

    .line 82
    sget-object p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 83
    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 91
    sget v0, Lcom/android/settings/R$string;->accessibility_display_daltonizer_preference_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 92
    sget v0, Lcom/android/settings/R$string;->accessibility_display_daltonizer_preference_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->updateFooterPreference()V

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 162
    check-cast v1, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->setOnChangeListener(Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_daltonizer_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    if-ne p2, v1, :cond_1

    return-void

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p2, :cond_2

    .line 198
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    .line 197
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    .line 205
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 148
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 152
    check-cast v1, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->setOnChangeListener(Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController$OnChangeListener;)V

    .line 154
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "accessibility_display_daltonizer_enabled"

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 212
    sget p0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    .line 211
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
