.class public Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeBypassingAppsSettings.java"

# interfaces
.implements Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;


# static fields
.field private static RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mAllBypassingAddAppsController:Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;

.field private static mIsFromDnd:Z


# instance fields
.field private REQUEST_CODE_OK:I

.field private final TAG:Ljava/lang/String;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

.field private mUm:Landroid/os/UserManager;

.field result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 234
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$1;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_bypassing_apps:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 247
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const-string v0, "ZenBypassingApps"

    .line 63
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->REQUEST_CODE_OK:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->result:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private allowPackageNameList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    sget-boolean v1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mIsFromDnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getDndException(Landroid/content/Context;Lcom/android/settings/notification/zen/ZenModeBackend;)Ljava/util/ArrayList;

    move-result-object p0

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 190
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 191
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/applications/ApplicationsState;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/notification/NotificationBackend;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance p3, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;

    sget-boolean p4, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mIsFromDnd:Z

    invoke-direct {p3, p0, p1, p5, p4}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;Z)V

    sput-object p3, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mAllBypassingAddAppsController:Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;

    .line 100
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "path"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 89
    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mIsFromDnd:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mIsFromDnd:Z

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v7, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v7}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenBypassingApps"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x634

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

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mUm:Landroid/os/UserManager;

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

    .line 203
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 205
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 207
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

    .line 208
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

    .line 209
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

    .line 218
    sget p0, Lcom/android/settings/R$xml;->zen_mode_bypassing_apps:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 146
    iget p2, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->REQUEST_CODE_OK:I

    if-ne p1, p2, :cond_3

    :try_start_0
    const-string/jumbo p1, "selected_apps"

    .line 148
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->result:Ljava/util/ArrayList;

    .line 150
    sget-boolean p1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mIsFromDnd:Z

    if-eqz p1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->allowPackageNameList()Ljava/util/ArrayList;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    const-string v1, ":"

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 153
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 155
    iget-object p3, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 156
    iget-object p3, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p3, v2, p2, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setAppBypassDnd(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->result:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 162
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 163
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/settings/notification/zen/ZenModeBackend;->setAppBypassDnd(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 166
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 167
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->result:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 168
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_2
    sget-object p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public onAddAppItemClick()V
    .locals 4

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.notification.zen.lifestyle.DndAppPickerActivity"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->getPackagesAsUser()Ljava/util/Map;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
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

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.cellbroadcastreceiver:0"

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string/jumbo v1, "supported_apps"

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->allowPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "selected_apps"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 133
    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->REQUEST_CODE_OK:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string/jumbo v0, "zen_contact"

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->setZenModeAllBypassingAppsListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method public onPerformRemoveClick(I)V
    .locals 0

    .line 138
    sget-object p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mAllBypassingAddAppsController:Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->handleDelete(I)V

    return-void
.end method
