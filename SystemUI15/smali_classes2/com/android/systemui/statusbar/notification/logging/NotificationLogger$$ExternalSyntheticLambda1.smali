.class public final synthetic Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    sget-object p1, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;->toNotificationProto(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;

    move-result-object p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN_LOCKSCREEN:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN_STATUS_BAR:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->getId()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;->notifications:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    array-length v1, v1

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II[B)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onChildLocationsChanged()V

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    sget-object p1, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    :cond_5
    :goto_3
    return-void
.end method
