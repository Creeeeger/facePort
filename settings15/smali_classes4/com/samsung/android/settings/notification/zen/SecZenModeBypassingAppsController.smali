.class public Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ALLOW_ALL_EXCEPT_SELECTED_CONTACTS:I = 0x1

.field private static final ALLOW_ONLY_SELECTED_CONTACTS:I = 0x0

.field public static final ZEN_MODE_BYPASSING_APPS_DB_KEY:Ljava/lang/String; = "zen_selected_apps_bypass_dnd_allowed"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAllowState:I

.field private mIsFromDnd:Z

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mPreferenceKey:Ljava/lang/String;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field private mZenModeBypassingAppsMenu:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreferenceKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mIsFromDnd:Z

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mZenModeBypassingAppsMenu:[Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03017f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mZenModeBypassingAppsMenu:[Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mZenModeBypassingAppsMenu:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "0"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "1"

    aput-object v1, p1, v0

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8d13

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    const v2, 0x7f1425f4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    const v0, 0x7f1428ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    const v0, 0x7f1428ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    iget v9, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    iget-object p2, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v2, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v5, p2, Landroid/app/NotificationManager$Policy;->state:I

    iget v6, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v7, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v8

    iget-object p2, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithExceptions(IIIIIIILjava/util/List;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppFlag(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionAppFlag()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getAppFlag()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mZenModeBypassingAppsMenu:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeBypassingAppsController;->mCurrentAllowState:I

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
