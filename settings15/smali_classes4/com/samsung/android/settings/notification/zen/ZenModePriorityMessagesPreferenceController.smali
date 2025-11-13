.class public final Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mIsFromDnd:Z

.field public final mListValues:[Ljava/lang/String;

.field public mPreference:Landroidx/preference/SecDropDownPreference;

.field public final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1

    const-string/jumbo v0, "zen_mode_messages"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030212

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "zen_mode_messages"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_messages"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSenders(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->updateFromContactsValue$2(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateFromContactsValue$2(Landroidx/preference/Preference;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mIsFromDnd:Z

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getContactsSummary(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v6

    float-to-int v6, v6

    if-eqz v6, :cond_3

    if-eq v6, v1, :cond_2

    if-eq v6, v3, :cond_1

    const v1, 0x7f143893

    goto :goto_0

    :cond_1
    const v1, 0x7f143895

    goto :goto_0

    :cond_2
    const v1, 0x7f14388e

    goto :goto_0

    :cond_3
    const v1, 0x7f14388d

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result p1

    float-to-int p1, p1

    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v1

    if-ge v2, v3, :cond_6

    aget-object v3, v1, v2

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    aget-object p1, v1, v4

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const-string/jumbo v0, "zen_mode_from_none"

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f1438a3

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_4
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;->updateFromContactsValue$2(Landroidx/preference/Preference;)V

    return-void
.end method
