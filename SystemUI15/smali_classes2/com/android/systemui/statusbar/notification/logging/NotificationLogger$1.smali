.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

.field public final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

.field public final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v3

    invoke-static {v4, v2, v1, v5, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onVisibilityChanged(Ljava/util/Collection;Ljava/util/Collection;)V

    const-wide/16 v2, 0x1000

    const-string v0, "Notifications [Active]"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-string v1, "Notifications [Visible]"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
