.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

.field public final dirtyListeners:Lcom/android/systemui/util/ListenerSet;

.field public final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field public isSnoozeSettingsEnabled:Z

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final notifStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

.field public final onAppLockPackagesChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onAppLockPackagesChangedListener$1;

.field public final onSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onSensitiveStateChangedListener$1;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final sensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

.field public final settingsObserver:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/policy/AppLockNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->sensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    new-instance p2, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p2}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$userTrackerCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->userTrackerCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$userTrackerCallback$1;

    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast p6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p6, p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->notifStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onSensitiveStateChangedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onSensitiveStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->onSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onSensitiveStateChangedListener$1;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->settingsObserver:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onAppLockPackagesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onAppLockPackagesChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->onAppLockPackagesChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onAppLockPackagesChangedListener$1;

    return-void
.end method


# virtual methods
.method public final updateSnoozeEnabled()V
    .locals 4

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v2, "show_notification_snooze"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->isSnoozeSettingsEnabled:Z

    return-void
.end method
