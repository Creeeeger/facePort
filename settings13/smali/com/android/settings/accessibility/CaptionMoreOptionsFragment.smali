.class public Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CaptionMoreOptionsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->captioning_more_options:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private applySummaryColor(Landroidx/preference/Preference;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "captioning_locale"

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    .line 77
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->applySummaryColor(Landroidx/preference/Preference;)V

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 104
    sget p0, Lcom/android/settings/R$string;->help_url_caption:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptionMoreOptionsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$xml;->captioning_more_options:I

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "captioning"

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->initializeAllPreferences()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->updateAllPreferences()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->installUpdateListeners()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne p0, p1, :cond_1

    .line 95
    check-cast p2, Ljava/lang/String;

    const-string p0, "accessibility_captioning_locale"

    invoke-static {v0, p0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v1
.end method
