.class public final Lcom/android/systemui/log/table/TableLogBufferFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final existingBuffers:Ljava/util/Map;

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iput-object p4, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->existingBuffers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final create(ILjava/lang/String;)Lcom/android/systemui/log/table/TableLogBuffer;
    .locals 11

    new-instance v10, Lcom/android/systemui/log/table/TableLogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogBufferHelper;->Companion:Lcom/android/systemui/log/LogBufferHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    move v1, p1

    iget-object v3, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v4, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iget-object v5, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v6, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    move-object v0, v10

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/log/table/TableLogBuffer;-><init>(ILjava/lang/String;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/LogProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string p1, "\'"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v10, p2}, Lcom/android/systemui/dump/DumpManager;->canAssignToNameLocked(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/dump/DumpManager;->tableLogBuffers:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    invoke-direct {v0, v10, p2}, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;)V

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
