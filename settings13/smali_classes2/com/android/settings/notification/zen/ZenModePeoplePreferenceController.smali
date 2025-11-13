.class public Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePeoplePreferenceController.java"


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    .line 52
    new-instance p2, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    const-string/jumbo p2, "user"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 86
    move-object v1, p1

    check-cast v1, Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getPeopleSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAlarmsTotalSilencePeopleSummary(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
