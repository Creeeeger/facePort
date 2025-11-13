.class public Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePriorityCallsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private mIsFromDnd:Z

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_calls"

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->zen_mode_contacts_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 51
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModePriorityCallsPreferenceController(Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 57
    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mIsFromDnd:Z

    return-void
.end method

.method private getContactsSummary(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 128
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_none_calls:I

    return p0

    .line 126
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    return p0

    .line 124
    :cond_1
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    return p0

    .line 122
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    return p0
.end method

.method private updateFromContactsValue(Landroidx/preference/Preference;)V
    .locals 4

    .line 96
    move-object v0, p1

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 107
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getContactsSummary(I)I

    move-result v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->getContactsSummary(I)I

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 112
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mIsFromDnd:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result p1

    float-to-int p1, p1

    .line 111
    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getZenModeRepeatCallersPreferenceController()Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->refreshState()V

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    goto :goto_2

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const-string v0, "zen_mode_from_none"

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAlarmsTotalSilencePeopleSummary(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_calls"

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    return-void
.end method

.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 136
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_calls"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v1, 0x8

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    .line 85
    invoke-virtual {v0, v1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSenders(II)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    .line 89
    invoke-static {p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    .line 91
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return-void
.end method
