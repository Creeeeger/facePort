.class public Lcom/android/settings/notification/app/AppNotificationSettings;
.super Lcom/android/settings/notification/app/NotificationSettings;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/app/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    .line 91
    new-instance v1, Lcom/android/settings/notification/app/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/app/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/BlockPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/BlockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/AppLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/AppLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/DescriptionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/DescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/NotificationsOffPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/NotificationsOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/DeletedChannelsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/DeletedChannelsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/DividerPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/DividerPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/app/SecAlertShowNotificationPreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/notification/app/SecAlertShowNotificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecAppSilentRadioPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/settings/notification/SecAppSilentRadioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationTypeController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/AppNotificationTypeController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationTypePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/AppNotificationTypePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/app/NotificationsOnSecInsetCategoryNoStrokePreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/notification/app/NotificationsOnSecInsetCategoryNoStrokePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/app/DefaultChannelSecInsetCategoryPreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/notification/app/DefaultChannelSecInsetCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppNotificationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1c84

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->sec_app_notification_settings_v1:I

    return p0
.end method

.method public onResume()V
    .locals 10

    .line 51
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationSettings;->onResume()V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 54
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 59
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 66
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    :cond_3
    :goto_1
    const-string v0, "AppNotificationSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
