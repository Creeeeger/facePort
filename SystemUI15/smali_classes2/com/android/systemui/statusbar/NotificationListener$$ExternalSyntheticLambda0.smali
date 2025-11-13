.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v0, :cond_0

    const-string v1, "NotificationListener"

    const-string v2, "mRankingMapQueue was empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    iput-wide v4, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    :cond_1
    iget-wide v6, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
