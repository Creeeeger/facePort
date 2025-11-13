.class public final Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field public final mAppSessionCallbacks:Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field public final mHostFragment:Landroidx/fragment/app/Fragment;

.field public final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static $r8$lambda$KLAPWYCnxAQ1uydjeCNS1iA9q_k(Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    const/16 p0, 0x635

    iput p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;)V

    iput-object p4, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iput-object p3, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_1
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "zen_mode_bypassing_apps_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ENABLED_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    :goto_0
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)V

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_bypassing_apps_list"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateAppList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "all|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(ILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v5, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v5, v3, v6}, Landroid/app/INotificationManager;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "NotificationBackend"

    const-string v6, "Error calling NoMan"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_5

    if-lez v3, :cond_1

    new-instance v5, Lcom/android/settingslib/widget/AppPreference;

    iget-object v6, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    monitor-enter v1

    :try_start_1
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v5}, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/widget/AppPreference;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v4, v3, :cond_4

    const v1, 0x7f143860

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_4
    const v1, 0x7f14385f

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_0

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "all_none"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez v0, :cond_8

    if-nez p1, :cond_7

    new-instance p1, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v0, "all_none"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f14385c

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    :goto_5
    return-void
.end method
