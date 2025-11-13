.class public final Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->$uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v3, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v2, :cond_1

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    goto/16 :goto_c

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    check-cast v5, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    iget-object v7, v5, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    check-cast v7, Lcom/android/systemui/appops/AppOpsControllerImpl;

    invoke-virtual {v7, v6}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    move-result-object v6

    iget-object v7, v5, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    iget-object v8, v5, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/appops/AppOpItem;

    move-object v12, v7

    check-cast v12, Ljava/lang/Iterable;

    instance-of v13, v12, Ljava/util/Collection;

    if-eqz v13, :cond_3

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    iget v14, v11, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v12, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    iget v11, v11, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    invoke-static {v11, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_3
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/appops/AppOpItem;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->toPrivacyItemLocked(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    monitor-exit v8

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto/16 :goto_0

    :goto_5
    monitor-exit v8

    throw v0

    :cond_9
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v4, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logRetrievedPrivacyItemsList(Ljava/util/List;)V

    iget-object v5, v1, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long/2addr v7, v9

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/privacy/PrivacyItem;

    iget-wide v12, v11, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    cmp-long v12, v12, v7

    if-lez v12, :cond_f

    move-object v12, v2

    check-cast v12, Ljava/lang/Iterable;

    instance-of v13, v12, Ljava/util/Collection;

    iget-object v14, v11, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    if-eqz v13, :cond_b

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    move-wide/from16 v16, v7

    move-object v8, v4

    goto :goto_8

    :cond_b
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v15, v13, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v15, v14, :cond_c

    iget-object v15, v13, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object v3, v11, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-wide/from16 v16, v7

    iget-wide v6, v13, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    move-object v8, v4

    iget-wide v3, v11, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_d

    goto :goto_9

    :cond_c
    move-wide/from16 v16, v7

    move-object v8, v4

    :cond_d
    move-object v4, v8

    move-wide/from16 v7, v16

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_7

    :goto_8
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-eq v14, v3, :cond_e

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    move-object v4, v8

    move-wide/from16 v7, v16

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_6

    :cond_f
    move-wide/from16 v16, v7

    move-object v8, v4

    goto :goto_9

    :cond_10
    move-wide/from16 v16, v7

    move-object v8, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_15

    invoke-virtual {v8, v9}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsToHold(Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_a

    :cond_12
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    iget-wide v6, v6, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/privacy/PrivacyItem;

    iget-wide v11, v11, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    cmp-long v13, v6, v11

    if-lez v13, :cond_14

    move-object v5, v10

    move-wide v6, v11

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_13

    :goto_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/systemui/privacy/PrivacyItem;

    iget-wide v4, v5, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    sub-long v4, v4, v16

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsUpdateScheduled(J)V

    iget-object v6, v1, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    iget-object v7, v1, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v7, v6, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    :cond_15
    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    iget-boolean v6, v6, Lcom/android/systemui/privacy/PrivacyItem;->paused:Z

    const/4 v3, 0x1

    xor-int/2addr v6, v3

    if-eqz v6, :cond_16

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    :goto_c
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->$uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
