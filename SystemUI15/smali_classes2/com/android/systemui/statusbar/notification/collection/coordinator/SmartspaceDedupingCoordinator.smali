.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final clock:Lcom/android/systemui/util/time/SystemClock;

.field private final collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

.field private isOnLockscreen:Z

.field private final notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

.field private trackedSmartspaceTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->clock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    return-void
.end method

.method public static final synthetic access$cancelExceptionTimeout(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->cancelExceptionTimeout(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)V

    return-void
.end method

.method public static final synthetic access$getFilter$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    return-object p0
.end method

.method public static final synthetic access$getTrackedSmartspaceTargets$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isDupedWithSmartspaceContent(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isDupedWithSmartspaceContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isOnLockscreen$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    return p0
.end method

.method public static final synthetic access$onNewSmartspaceTargets(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->onNewSmartspaceTargets(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$recordStatusBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->recordStatusBarState(I)V

    return-void
.end method

.method public static final synthetic access$updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z

    move-result p0

    return p0
.end method

.method private final cancelExceptionTimeout(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getCancelTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->setCancelTimeoutRunnable(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->setAlertExceptionExpires(J)V

    return-void
.end method

.method private final hasRecentlyAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;->access$getALERT_WINDOW$p()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isDupedWithSmartspaceContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getShouldFilter()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final onNewSmartspaceTargets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    instance-of v2, p1, Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSourceNotificationKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;-><init>(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z

    move-result v3

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getCancelTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    const-string v1, "onNewSmartspaceTargets"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    return-void
.end method

.method private final recordStatusBarState(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    if-eq v1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recordStatusBarState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final updateAlertException(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;->access$getALERT_WINDOW$p()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getAlertExceptionExpires()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getCancelTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->setAlertExceptionExpires(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$updateAlertException$1;

    invoke-direct {v3, p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$updateAlertException$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    sub-long/2addr v4, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->setCancelTimeoutRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private final updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getShouldFilter()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->updateAlertException(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->hasRecentlyAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->setShouldFilter(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->getShouldFilter()Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object p1, p1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->recordStatusBarState(I)V

    return-void
.end method
