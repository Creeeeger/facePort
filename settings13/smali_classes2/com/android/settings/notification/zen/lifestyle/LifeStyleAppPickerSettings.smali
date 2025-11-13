.class public Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LifeStyleAppPickerSettings.java"

# interfaces
.implements Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;


# static fields
.field private static RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field private static mLifeStyleZenModeAppPickerPreferenceController:Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;


# instance fields
.field private REQUEST_CODE_OK:I

.field private TAG:Ljava/lang/String;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->REQUEST_CODE_OK:I

    const-string v0, "LifeStyleAppPickerSettings"

    .line 50
    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private allowPackageNameList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 139
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 140
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/notification/NotificationBackend;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V

    sput-object v1, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mLifeStyleZenModeAppPickerPreferenceController:Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPackagesAsUser()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 150
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 152
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 154
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_1

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 95
    sget p0, Lcom/android/settings/R$xml;->lifestyle_app_picker:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 125
    iget p0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->REQUEST_CODE_OK:I

    if-ne p1, p0, :cond_1

    const-string/jumbo p0, "selected_apps"

    .line 126
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 127
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 129
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    sget-object p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    :cond_1
    return-void
.end method

.method public onAddAppItemClick()V
    .locals 4

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.notification.zen.lifestyle.DndAppPickerActivity"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->getPackagesAsUser()Ljava/util/Map;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.cellbroadcastreceiver:0"

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string/jumbo v1, "supported_apps"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->allowPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "selected_apps"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 85
    iget v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->REQUEST_CODE_OK:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p1

    sput-object p1, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 61
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "life_zen_app_picker"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->setZenModeAllBypassingAppsListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;)V

    .line 67
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method public onPerformRemoveClick(I)V
    .locals 0

    .line 90
    sget-object p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleAppPickerSettings;->mLifeStyleZenModeAppPickerPreferenceController:Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->handleDelete(I)V

    return-void
.end method
