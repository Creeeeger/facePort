.class public Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleReduceBrightColorsPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

.field private mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;


# direct methods
.method public static synthetic $r8$lambda$kTYnRGVP70d5JEz7oLrobG1pBSQ(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 207
    new-instance v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;

    sget v1, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method private updateFooterPreference()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reduce_bright_colors_about_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private updateGeneralCategoryOrder()V
    .locals 3

    const-string v0, "general_categories"

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "rbc_intensity"

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SeekBarPreference;

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 105
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 106
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v1, "rbc_persist"

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 109
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 110
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 148
    sget p0, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    return p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 174
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_shortcut_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getTileComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 185
    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object p0
.end method

.method getTileTooltipContent(I)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    .line 191
    sget p1, Lcom/android/settings/R$string;->accessibility_reduce_bright_colors_qs_tooltip_content:I

    goto :goto_0

    .line 192
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_reduce_bright_colors_auto_added_qs_tooltip_content:I

    .line 190
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getUserShortcutTypes()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$raw;->extra_dim_banner:I

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 72
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 73
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    .line 74
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_intro_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroTitle:Ljava/lang/CharSequence;

    .line 75
    new-instance v0, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rbc_intensity"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 77
    new-instance v0, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rbc_persist"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 79
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    sget p3, Lcom/android/settings/R$string;->reduce_bright_colors_switch_title:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateGeneralCategoryOrder()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateFooterPreference()V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded(I)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setReduceBrightColorsActivated(Z)Z

    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    .line 163
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "reduce_bright_colors_activated"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "rbc_intensity"

    .line 199
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "rbc_persist"

    .line 201
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 0

    .line 169
    sget p0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
