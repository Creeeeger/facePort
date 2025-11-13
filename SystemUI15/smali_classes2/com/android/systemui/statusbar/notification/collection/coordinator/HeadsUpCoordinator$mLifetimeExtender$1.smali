.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMNotifsExtendingLifetime$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "HeadsUpCoordinator"

    return-object p0
.end method

.method public maybeExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 7

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$isSticky(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHeadsUpEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEarliestRemovalTime:J

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMNotifsExtendingLifetime$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMExecutor$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {v0, v3, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMExecutor$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMNotifsExtendingLifetime$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$setMEndLifetimeExtension$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)V

    return-void
.end method
