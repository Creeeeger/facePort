.class public Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "LifeStyleZenModePeoplePreferenceController.java"


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 24
    iput-object p3, p0, Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 26
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModePeoplePreferenceController(Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 44
    move-object v1, p1

    check-cast v1, Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->calculatePeopleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    return-void
.end method
