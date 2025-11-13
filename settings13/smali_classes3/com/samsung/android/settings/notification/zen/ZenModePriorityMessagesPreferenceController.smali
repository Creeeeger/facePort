.class public Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePriorityMessagesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private mIsFromDnd:Z

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_messages"

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->zen_mode_contacts_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 51
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModePriorityMessagesPreferenceController(Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 56
    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    return-void
.end method

.method private getContactsSummary(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 125
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_none_calls:I

    return p0

    .line 123
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    return p0

    .line 121
    :cond_1
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    return p0

    .line 119
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    return p0
.end method

.method private updateFromContactsValue(Landroidx/preference/Preference;)V
    .locals 4

    .line 95
    move-object v0, p1

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 106
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getContactsSummary(I)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->getContactsSummary(I)I

    move-result v0

    .line 107
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 110
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result p1

    float-to-int p1, p1

    .line 109
    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const-string v0, "zen_mode_from_none"

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAlarmsTotalSilencePeopleSummary(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_messages"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    return-void
.end method

.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 134
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

    const-string p0, "zen_mode_messages"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/4 v1, 0x4

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    .line 84
    invoke-virtual {v0, v1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSenders(II)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    .line 90
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return-void
.end method
