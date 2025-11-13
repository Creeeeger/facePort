.class public Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeSoundVibrationPreferenceController.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;->mKey:Ljava/lang/String;

    .line 42
    new-instance p2, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->semGetSoundSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    check-cast p1, Landroidx/preference/SecPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method
