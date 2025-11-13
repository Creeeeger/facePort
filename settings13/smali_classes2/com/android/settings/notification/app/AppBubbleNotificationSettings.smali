.class public Lcom/android/settings/notification/app/AppBubbleNotificationSettings;
.super Lcom/android/settings/notification/app/NotificationSettings;
.source "AppBubbleNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mObserverMixin:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settings/notification/app/AppBubbleNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/app/AppBubbleNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;-><init>()V

    return-void
.end method

.method protected static getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/app/AppBubbleNotificationSettings;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/app/AppBubbleNotificationSettings;",
            "Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/app/NotificationPreferenceController;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Lcom/android/settings/notification/app/HeaderPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/notification/AppBubbleListPreferenceController;

    new-instance v2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/AppBubbleListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    :goto_0
    new-instance v7, Lcom/samsung/android/settings/notification/AllRadioBubblePreferenceController;

    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/notification/AllRadioBubblePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroidx/fragment/app/FragmentManager;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v7, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;

    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroidx/fragment/app/FragmentManager;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Lcom/samsung/android/settings/notification/NoneRadioBubblePreferenceController;

    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2, p2}, Lcom/samsung/android/settings/notification/NoneRadioBubblePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/app/AppBubbleNotificationSettings;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppBubNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$xml;->sec_app_bubble_notification_settings:I

    return p0
.end method

.method public onGlobalBubblePermissionChanged()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->onStop()V

    .line 115
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 10

    .line 94
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationSettings;->onResume()V

    .line 96
    iget v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 103
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 108
    new-instance v0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;

    .line 109
    invoke-virtual {v0}, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->onStart()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "AppBubNotiSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
