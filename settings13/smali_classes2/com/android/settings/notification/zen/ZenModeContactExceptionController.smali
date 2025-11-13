.class public Lcom/android/settings/notification/zen/ZenModeContactExceptionController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeContactExceptionController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFromDnd:Z

.field private mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 25
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 31
    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    return-void
.end method

.method private updateEntry()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenUtil;->getSelectedContact(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenUtil;->getSelectedLifeStyleContact(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 62
    :goto_0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    return-void
.end method

.method public handleDelete(I)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->deleteSelectedEntry(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->deleteSelectedLifeStyleContactList(I)V

    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 48
    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v0, 0x4

    .line 49
    iput v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->updateEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->updateEntries(Ljava/util/ArrayList;)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    .line 52
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->notifyAdapter()V

    return-void
.end method
