.class public final Lcom/android/systemui/doze/PluginAODManager$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "onEntryAdded: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "addNotification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    const-string p2, "PluginAODManager"

    const-string v0, "onEntryRemoved: "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "removeNotification"

    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    const-string v0, "PluginAODManager"

    const-string v1, "onEntryUpdated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "updateNotification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_4
    :goto_3
    return-void
.end method
