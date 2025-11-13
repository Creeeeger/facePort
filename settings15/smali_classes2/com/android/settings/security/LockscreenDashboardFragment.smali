.class public Lcom/android/settings/security/LockscreenDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field static final KEY_ADD_USER_FROM_LOCK_SCREEN:Ljava/lang/String; = "security_lockscreen_add_users_when_locked"

.field static final KEY_LOCK_SCREEN_NOTIFICATON:Ljava/lang/String; = "security_setting_lock_screen_notif"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE:Ljava/lang/String; = "security_setting_lock_screen_notif_work"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE_HEADER:Ljava/lang/String; = "security_setting_lock_screen_notif_work_header"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field mControlsContentObserver:Landroid/database/ContentObserver;

.field public mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/security/LockscreenDashboardFragment$2;

    const v1, 0x7f170244

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "security_setting_lock_screen_notif_work_header"

    const-string v4, "security_setting_lock_screen_notif_work"

    const-string v5, "security_setting_lock_screen_notif"

    invoke-direct {v2, p1, v5, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getConfig$1(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LockscreenDashboardFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x372

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170244

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/LockscreenDashboardFragment;->getConfig$1(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    const-class v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/LockscreenDashboardFragment;->getConfig$1(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/LockscreenDashboardFragment;->getConfig$1(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/LockscreenDashboardFragment;->getConfig$1(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    new-instance v0, Lcom/android/settings/security/LockscreenDashboardFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/LockscreenDashboardFragment$1;-><init>(Lcom/android/settings/security/LockscreenDashboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mControlsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_show_controls"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mControlsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Settings.WORK_PROFILE_LOCKED_NOTIFICATION_TITLE"

    const v0, 0x7f14159d

    const-string v1, "security_setting_lock_screen_notif_work"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "Settings.WORK_PROFILE_NOTIFICATIONS_SECTION_HEADER"

    const v0, 0x7f141da9

    const-string v1, "security_setting_lock_screen_notif_work_header"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mControlsContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mControlsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mControlsContentObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public final onOwnerInfoUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    :cond_0
    return-void
.end method
