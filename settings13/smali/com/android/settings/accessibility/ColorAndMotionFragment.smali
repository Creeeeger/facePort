.class public Lcom/android/settings/accessibility/ColorAndMotionFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAndMotionFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

.field private mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_color_and_motion:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "daltonizer_preference"

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    const-string/jumbo v0, "toggle_disable_animations"

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    const-string/jumbo v0, "toggle_large_pointer_icon"

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method private updateSystemPreferences()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "experimental_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 93
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 101
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 102
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 103
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 104
    iget-object p0, p0, Lcom/android/settings/accessibility/ColorAndMotionFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ColorAndMotionFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 67
    sget p0, Lcom/android/settings/R$xml;->accessibility_color_and_motion:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/accessibility/ColorAndMotionFragment;->initializeAllPreferences()V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/accessibility/ColorAndMotionFragment;->updateSystemPreferences()V

    return-void
.end method
