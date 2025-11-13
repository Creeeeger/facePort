.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCaptioningPresetValuesArray:[I

.field private mFontSizeValuesArray:[F

.field private mFooter:Lcom/android/settings/accessibility/AccessibilityFooterPreference;

.field private mMoreOptions:Landroidx/preference/Preference;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Landroidx/preference/SwitchPreferenceCompat;

.field private mTextAppearance:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->captioning_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    return-void
.end method

.method private applySummaryColor(Landroidx/preference/Preference;)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private geTextAppearanceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->captioning_font_size_selector_summaries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    invoke-static {v2, v1}, Lcom/google/common/primitives/Floats;->indexOf([FF)I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->captioning_preset_selector_titles:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v3

    .line 216
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningPresetValuesArray:[I

    invoke-static {p0, v3}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result p0

    .line 218
    sget v3, Lcom/android/settings/R$string;->captioning_size_and_style_summary:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v1

    .line 219
    :goto_0
    aget-object v0, v0, v7

    aput-object v0, v4, v6

    const/4 v0, 0x1

    if-ne v1, v5, :cond_1

    move p0, v6

    .line 220
    :cond_1
    aget-object p0, v2, p0

    aput-object p0, v4, v0

    .line 218
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initCaptioningPresetValuesArray()V
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->captioning_preset_selector_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 190
    array-length v1, v0

    .line 191
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningPresetValuesArray:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningPresetValuesArray:[I

    aget v4, v0, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFontSizeValuesArray()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->captioning_font_size_selector_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 173
    array-length v1, v0

    .line 174
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 4

    const-string v0, "captioning_preference_switch"

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "captioning_caption_appearance"

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    const-string v0, "captioning_more_options"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mMoreOptions:Landroidx/preference/Preference;

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mMoreOptions:Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "captioning_settings_footer"

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFooter:Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->accessibility_caption_preference_footer_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->accessibility_caption_preference_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFooter:Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->geTextAppearanceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applySummaryColor(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 154
    sget p0, Lcom/android/settings/R$string;->help_url_caption:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptionPropertiesFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$xml;->captioning_settings:I

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "captioning"

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initFontSizeValuesArray()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initCaptioningPresetValuesArray()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Landroidx/preference/SwitchPreferenceCompat;

    if-ne p0, p1, :cond_0

    .line 146
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "accessibility_captioning_enabled"

    .line 145
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_captioning_enabled"

    .line 163
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
