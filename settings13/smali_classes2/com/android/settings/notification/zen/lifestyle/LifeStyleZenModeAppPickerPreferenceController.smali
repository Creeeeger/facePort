.class public Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "LifeStyleZenModeAppPickerPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

.field private final mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    const-string p3, "life_zen_app_picker"

    .line 32
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 33
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method

.method private updateEntry()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    .line 63
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setAddAppException(Ljava/lang/Boolean;)V

    .line 64
    sget v3, Lcom/android/settings/R$drawable;->ic_dnd_add_apps:I

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setImageEntry(I)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_add:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getLifeStyleDndException(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    new-instance v2, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "life_zen_app_picker"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public handleDelete(I)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->handleDeleteSelectedLifeStyleAppList(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v0, 0x4

    .line 53
    iput v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    .line 54
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->updateEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->updateEntries(Ljava/util/ArrayList;)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->notifyAdapter()V

    return-void
.end method
