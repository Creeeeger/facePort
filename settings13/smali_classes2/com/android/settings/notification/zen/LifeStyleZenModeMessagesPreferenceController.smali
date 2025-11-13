.class public Lcom/android/settings/notification/zen/LifeStyleZenModeMessagesPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "LifeStyleZenModeMessagesPreferenceController.java"


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/notification/zen/LifeStyleZenModeMessagesPreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/zen/LifeStyleZenModeMessagesPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 42
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAlarmsTotalSilencePeopleSummary(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
