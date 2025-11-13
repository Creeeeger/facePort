.class public final Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotifLogging:Ljava/util/Set;

.field public final mNotifPackageCountLogging:Ljava/util/Set;

.field public final mNotificationHandlers:Ljava/util/List;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mRankingMapQueue:Ljava/util/Deque;

.field public final mSettingsListeners:Ljava/util/ArrayList;

.field public mSkippingRankingUpdatesSince:J

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/domain/interactor/SilentNotificationStatusIconsVisibilityInteractor;Lcom/android/systemui/util/time/SystemClock;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;)V
    .locals 2

    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    new-instance p3, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationListener;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    const-string p2, "notification_pref"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string p3, "QPNS0002"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotifLogging:Ljava/util/Set;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string p3, "QPNS0003"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotifPackageCountLogging:Ljava/util/Set;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener is already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    const-string v0, "notificationHandlers"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onListenerConnected()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NotificationListener"

    const-string v0, "onListenerConnected unable to get active notifications."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/Object;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->shouldHideSilentStatusBarIcons()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onSilentStatusBarIconsVisibilityChanged(Z)V

    return-void
.end method

.method public final onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/Object;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "smartcapture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p2

    const/16 v0, 0x167b

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/logging/PanelScreenShotLogger;->makeScreenShotLog()V

    :cond_2
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p2, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Notification$MessagingStyle;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    invoke-static {p2, p1}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "image/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationListener$1;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/NotificationListener$1;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/net/Uri;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/NotificationListenerController;->getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    const/16 p0, 0x19

    if-ne p3, p0, :cond_3

    const-string p0, "QPN001"

    const-string p1, "QPNE0027"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onSilentStatusBarIconsVisibilityChanged(Z)V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$1;

    xor-int/lit8 v1, p1, 0x1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShowLowPriority:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateStatusBarIcons()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerAsSystemService()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationListener"

    const-string v1, "Unable to register notification listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
