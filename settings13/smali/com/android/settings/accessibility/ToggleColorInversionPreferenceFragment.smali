.class public Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleColorInversionPreferenceFragment.java"


# direct methods
.method public static synthetic $r8$lambda$CY93GyrGRFaZn8IDgj_zXkkLoVc(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$registerKeysToObserverCallback$0(Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method private updateFooterPreference()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_color_inversion_about_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->accessibility_color_inversion_footer_learn_more_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->getHelpResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setupHelpLink(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 137
    sget p0, Lcom/android/settings/R$string;->help_url_color_inversion:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x719

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->accessibility_color_inversion_settings:I

    return p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 84
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->accessibility_display_inversion_preference_title:I

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

    .line 148
    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object p0
.end method

.method getTileTooltipContent(I)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    .line 154
    sget p1, Lcom/android/settings/R$string;->accessibility_color_inversion_qs_tooltip_content:I

    goto :goto_0

    .line 155
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_color_inversion_auto_added_qs_tooltip_content:I

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getUserShortcutTypes()I
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 90
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 91
    sget v0, Lcom/android/settings/R$string;->accessibility_display_inversion_preference_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 92
    sget v0, Lcom/android/settings/R$string;->accessibility_display_inversion_preference_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    .line 93
    sget v0, Lcom/android/settings/R$string;->accessibility_display_inversion_preference_intro_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroTitle:Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$raw;->accessibility_color_inversion_banner:I

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->updateFooterPreference()V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_inversion_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded(I)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    .line 74
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
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method protected registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "accessibility_display_inversion_enabled"

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 0

    .line 79
    sget p0, Lcom/android/settings/R$string;->accessibility_display_inversion_switch_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
