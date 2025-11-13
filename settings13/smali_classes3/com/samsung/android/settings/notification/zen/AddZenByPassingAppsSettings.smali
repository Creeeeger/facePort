.class public Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AddZenByPassingAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;
    }
.end annotation


# instance fields
.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mNonByPassingFilter:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$kj0Rz_CSyhoztgziNz0wzGHQMsc(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->lambda$updateNotificationAppsList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationAppsList(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->updateNotificationAppsList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationAppsList(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->updateNotificationAppsList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 145
    new-instance v0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$1;-><init>(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    return-void
.end method

.method private synthetic lambda$updateNotificationAppsList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 2

    .line 126
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 127
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v0, "uid"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->app_notifications_title:I

    .line 132
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 p2, 0x0

    .line 133
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x635

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateNotificationAppsList()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mNonByPassingFilter:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    return-void
.end method

.method private updateNotificationAppsList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 118
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 121
    new-instance v2, Lcom/android/settingslib/widget/AppPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->getIconWithoutCache(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v1, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenAddByPassApps"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x634

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 62
    sget p0, Lcom/android/settings/R$xml;->sec_zen_mode_add_bypassing_apps:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 84
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;-><init>(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mNonByPassingFilter:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "zen_mode_bypassing_apps_list"

    .line 92
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->updateNotificationAppsList()V

    return-void
.end method
