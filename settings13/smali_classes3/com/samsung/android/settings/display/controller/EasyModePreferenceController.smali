.class public Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "EasyModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "easy_mode"

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V

    return-void
.end method

.method private updateEasyModeState(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_easy_mode_sub_display_desc:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;Z)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto :goto_1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->screen_resolution_disabled_toast:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->boost_mode_game_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->screen_resolution_disabled_toast:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->hdmi_mode_dex:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 105
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "easy_mode"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "easy_mode"

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "easy_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->isEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportEasyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->updateEasyModeState(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 111
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;->updateEasyModeState(Z)V

    return-void
.end method
