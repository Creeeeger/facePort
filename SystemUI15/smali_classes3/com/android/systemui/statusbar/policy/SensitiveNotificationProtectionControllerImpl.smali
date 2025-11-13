.class public final Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;


# instance fields
.field public mActiveMediaProjectionSession:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;

.field public mDisableScreenShareProtections:Z

.field public final mListeners:Lcom/android/systemui/util/ListenerSet;

.field public final mLogger:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;

.field final mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field public final mNotificationProtectionExemptPackages:Landroid/util/ArraySet;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public volatile mProjection:Landroid/media/projection/MediaProjectionInfo;

.field public final mSessionProtectionExemptPackages:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/media/projection/MediaProjectionManager;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;)V
    .locals 10

    move-object v1, p0

    move-object v0, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mSessionProtectionExemptPackages:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mNotificationProtectionExemptPackages:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v2}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mDisableScreenShareProtections:Z

    new-instance v8, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;)V

    iput-object v8, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    move-object/from16 v2, p9

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;

    move-object v2, p5

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    new-instance v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;

    invoke-direct {v2, p0, v7, p2, v6}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;)V

    const-string v3, "disable_screen_share_protections_for_apps_and_notifications"

    invoke-interface {p2, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v9, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Landroid/content/Context;Landroid/app/IActivityManager;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v0, p3

    invoke-virtual {p3, v8, v6}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final isSensitiveStateActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldProtectNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mNotificationProtectionExemptPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->visibility:I

    const/4 v0, 0x1

    if-nez p0, :cond_5

    move p0, v0

    goto :goto_0

    :cond_5
    move p0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p1

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    return v1
.end method

.method public final updateProjectionStateAndNotifyListeners(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mDisableScreenShareProtections:Z

    const/4 v2, 0x0

    const-string v3, "SNPC"

    if-eqz v1, :cond_0

    const-string p1, "Screen share protections disabled"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_0
    const-string v1, "Screen share protections exempt for package "

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mSessionProtectionExemptPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.permission.RECORD_SENSITIVE_CONTENT"

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " via permission"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string p1, "Screen share protections exempt for single app screenshare"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance p1, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method
