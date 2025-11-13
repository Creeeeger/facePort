.class public Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BriefPopUpKeywordColorSettings.java"


# instance fields
.field colorPreference:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BriefPopUpKeywordColorSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 15
    sget p0, Lcom/android/settings/R$xml;->brief_popup_keyword_color_settings:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorSettings;->colorPreference:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "brief_popup_keyword_color_layout_settings"

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorSettings;->colorPreference:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    return-void
.end method
