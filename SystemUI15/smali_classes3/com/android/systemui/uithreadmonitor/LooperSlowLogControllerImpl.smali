.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final choreographerCallStackCnt$delegate:Lkotlin/Lazy;

.field public final choreographerLazy:Ldagger/Lazy;

.field public final choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

.field public curChoreographerOnly:Z

.field public curLogHandler:Lkotlin/jvm/functions/Function2;

.field public curSlowDeliveryMs:J

.field public curSlowDispatchMs:J

.field public final debug:Z

.field public final debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

.field public final dumpBuf$delegate:Lkotlin/Lazy;

.field public final jobs:[Lkotlinx/coroutines/Job;

.field public final mainLooper:Landroid/os/Looper;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final types:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->mainLooper:Landroid/os/Looper;

    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerLazy:Ldagger/Lazy;

    const-string p1, "LooperSlow"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    new-instance p1, Landroid/util/SparseArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    new-array p1, p2, [Lkotlinx/coroutines/Job;

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$dumpBuf$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$dumpBuf$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerCallStackCnt$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerCallStackCnt$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerSlowDispatchMs$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerSlowDispatchMs$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz p1, :cond_0

    const-string p1, "LooperSlowLogController"

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    :cond_0
    return-void
.end method

.method public static synthetic getCurSlowDeliveryMs$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurSlowDispatchMs$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final disable(I)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    iput-boolean v0, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    iput-object v3, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    aput-object v3, v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->update$5$1()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v1

    throw p0

    :cond_4
    :goto_2
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final enable(IJJJZLkotlin/jvm/functions/Function2;)Z
    .locals 30

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v11, p4

    move-wide/from16 v9, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    const-string v5, "enable "

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    if-ltz v13, :cond_8

    const/16 v1, 0xa

    if-lt v13, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, v14, v3

    if-gtz v1, :cond_1

    cmp-long v1, v11, v3

    if-gtz v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    return v2

    :cond_1
    const/16 v16, 0x1

    if-eqz v8, :cond_2

    move/from16 v2, v16

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "enable type="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dispatch="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " delivery="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " dur="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cOnly="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hasLogHandler="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "LooperSlow"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v2, p1

    move-wide/from16 v3, v21

    move-object/from16 v29, v5

    move-object/from16 v21, v6

    move-wide/from16 v5, v23

    move-wide/from16 v7, v25

    move/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    const-wide/16 v2, 0x0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    move-wide/from16 v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    move/from16 v4, p8

    iput-boolean v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    invoke-virtual {v4, v13, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "LooperSlow"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    aget-object v1, v1, v13

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    aput-object v7, v1, v13

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_0
    cmp-long v1, p6, v2

    if-lez v1, :cond_7

    iget-object v8, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    iget-object v9, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    const/4 v6, 0x0

    move-object v1, v10

    move-wide/from16 v2, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;-><init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v9, v7, v7, v10, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    aput-object v1, v8, v13

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->update$5$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    return v16

    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    :goto_1
    monitor-exit v21

    throw v0

    :cond_8
    :goto_2
    return v2
.end method

.method public final isEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final update$5$1()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    new-instance v1, Landroidx/core/util/SparseArrayKt$valueIterator$1;

    invoke-direct {v1, v0}, Landroidx/core/util/SparseArrayKt$valueIterator$1;-><init>(Landroid/util/SparseArray;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    const/4 v0, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    if-eqz v2, :cond_1

    iget-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    iget-wide v6, v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    iget-wide v5, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    goto :goto_1

    :cond_3
    move-wide v5, v3

    :goto_1
    iput-wide v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    if-eqz v2, :cond_4

    iget-wide v7, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    goto :goto_2

    :cond_4
    move-wide v7, v3

    :goto_2
    iput-wide v7, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    iget-boolean v9, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    goto :goto_3

    :cond_5
    move v9, v1

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curChoreographerOnly:Z

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    :cond_6
    iput-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curLogHandler:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_7

    iget v2, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    goto :goto_4

    :cond_7
    const/4 v2, -0x1

    :goto_4
    const/4 v10, 0x1

    if-eqz v0, :cond_8

    move v0, v10

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "update t="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " disp="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " deli="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cOnly="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasLogHandler="

    const-string v5, "LooperSlow"

    invoke-static {v11, v9, v2, v0, v5}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curChoreographerOnly:Z

    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    iget-object v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->mainLooper:Landroid/os/Looper;

    invoke-virtual {p0, v3, v4, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Choreographer;

    const/16 v0, 0x1e

    invoke-virtual {p0, v10, v2, v0, v10}, Landroid/view/Choreographer;->setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->mainLooper:Landroid/os/Looper;

    iget-wide v6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    iget-wide v8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    iget-wide v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_a

    move v1, v10

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/Choreographer;->setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V

    :goto_6
    return-void
.end method
