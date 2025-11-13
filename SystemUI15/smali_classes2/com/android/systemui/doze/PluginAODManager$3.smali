.class public final Lcom/android/systemui/doze/PluginAODManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "animateExpandLockedShadePanel() sbn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final clickNotification(Ljava/lang/String;)V
    .locals 4

    const-string v0, "clickNotification() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result p0

    const/4 v3, 0x1

    invoke-static {p1, v0, p0, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    goto :goto_0

    :cond_0
    const-string p0, "can\'t get STATUS_BAR_SERVICE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final getNotificationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getNotificationIcon() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestActiveNotifications()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "PluginAODManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestActiveNotifications() size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    invoke-static {v3}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "updateActiveNotifications"

    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final requestVisibleNotifications()V
    .locals 3

    const-string v0, "PluginAODManager"

    const-string v1, "requestVisibleNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    const v1, 0x7f0a0cf8

    const v2, 0x7f0a0d05

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setTagId(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "refreshLockScreenNotifications: AOD_REQUEST_NOTIFICATIONS"

    const-string v1, "LockscreenNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_1
    return-void
.end method

.method public final showSubScreenNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
