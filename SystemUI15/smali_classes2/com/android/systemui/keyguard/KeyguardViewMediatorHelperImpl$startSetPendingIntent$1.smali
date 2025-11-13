.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $fIntent:Landroid/content/Intent;

.field public final synthetic $notificationKey:Ljava/lang/String;

.field public final synthetic $pIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$pIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$notificationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$pIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$notificationKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$fIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    iget-object v7, v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v6, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    if-nez v3, :cond_1

    iget-object v3, v4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Cannot send pending intent due to : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v3, v5, v4, v2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->$notificationKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const-string v4, "notificationKey="

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->commonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notificationsControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result v3

    invoke-static {v2, v4, v3, v1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1$3;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    return-void
.end method
