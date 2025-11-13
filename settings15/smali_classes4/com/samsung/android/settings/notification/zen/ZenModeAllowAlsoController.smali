.class public Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final ALLOW_ONLY_SELECTED_CONTACTS:I = 0x0

.field public static final ZEN_MODE_PEOPLE_SETTINGS_DB_KEY:Ljava/lang/String; = "zen_selected_exception_contacts_allowed"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAllowState:I

.field private mIsFromDnd:Z

.field private mPreference:Landroidx/preference/PreferenceCategory;

.field private mPreferenceKey:Ljava/lang/String;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mPreferenceKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mIsFromDnd:Z

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mPreference:Landroidx/preference/PreferenceCategory;

    :cond_0
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
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContactFlag()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContactFlag()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iput v1, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    :cond_1
    iget p0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;->mCurrentAllowState:I

    if-nez p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
