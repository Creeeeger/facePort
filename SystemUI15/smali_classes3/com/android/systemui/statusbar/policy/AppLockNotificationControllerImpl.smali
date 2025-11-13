.class public final Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/AppLockNotificationController;


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mAppLockActiveLockedPackages:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mListeners:Lcom/android/systemui/util/ListenerSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Landroid/content/pm/PackageManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mAppLockActiveLockedPackages:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mContext:Landroid/content/Context;

    const-string p3, "activity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    new-instance p1, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;

    invoke-direct {p1, p0, p5, p2, p4}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    const-string p0, "applock_locked_packages"

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    new-instance p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;)V

    invoke-interface {p5, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final isAppLockEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isApplockEnabled()Z

    move-result p0

    return p0
.end method

.method public final shouldHideNotiForAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is app locked. notification hidden : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ALNM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->visibility:I

    const/4 v0, 0x1

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    return v1
.end method
