.class public Lcom/android/settings/notification/zen/LifeStyleZenModeSettingsHeaderPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "LifeStyleZenModeSettingsHeaderPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "sec_lifestyle_zen_header_preference"

    .line 17
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private getZenFooterText()Ljava/lang/CharSequence;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->dnd_off_no_schedule_intial_header:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sec_lifestyle_zen_header_preference"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/notification/zen/LifeStyleZenModeSettingsHeaderPreferenceController;->getZenFooterText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
