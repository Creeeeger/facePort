.class public final Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->-$$Nest$mmaybeEmitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->-$$Nest$mapplyRanking(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;-><init>(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v7}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p2, v2, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v6, p1

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;-><init>(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMinGroupLingerDuration:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v4, v0, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEventCoalesced$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEventCoalesced$2;

    const-string v3, "GroupCoalescer"

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ranking map does not contain key "

    invoke-static {p1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Notification has already been coalesced: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->-$$Nest$mapplyRanking(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->-$$Nest$mmaybeEmitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->-$$Nest$mapplyRanking(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public final onNotificationsInitialized()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->onNotificationsInitialized()V

    return-void
.end method
