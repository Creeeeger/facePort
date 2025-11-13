.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final statsManager:Landroid/app/StatsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/app/StatsManager;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->statsManager:Landroid/app/StatsManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getAllNotificationsOnMainThread()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .locals 23

    const-string v1, "NotificationLogger"

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "NML#onPullAtom"

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x27be

    const/4 v3, 0x1

    move/from16 v4, p1

    if-eq v4, v0, :cond_2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return v3

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->getAllNotificationsOnMainThread()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v4, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v5, v4, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;

    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;

    sget-object v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;

    filled-new-array {v4, v5, v6}, [Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v4}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->aggregateMemoryUsageData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->uid:I

    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->style:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    iget v8, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    iget v9, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v9

    iget v10, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    iget v11, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v11

    iget v12, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    iget v13, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    invoke-static {v13}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v13

    iget v14, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    iget v15, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v15

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v16

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v17

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v18

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v19

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v20

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v21

    iget v3, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    move-result v22

    invoke-static/range {v5 .. v22}, Lcom/android/systemui/shared/system/SysUiStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    const/4 v0, 0x0

    return v0

    :goto_1
    :try_start_1
    const-string v3, "Failed to measure notification memory."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string v3, "Timed out when measuring notification memory."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    const/4 v1, 0x1

    return v1

    :goto_4
    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw v0
.end method
