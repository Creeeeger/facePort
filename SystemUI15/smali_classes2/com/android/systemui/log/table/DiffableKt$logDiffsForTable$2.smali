.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/table/TableLogBuffer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$columnPrefix:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/log/table/Diffable;

    check-cast p2, Lcom/android/systemui/log/table/Diffable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$columnPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/log/table/Diffable;

    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/log/table/Diffable;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;->$columnPrefix:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/log/table/TableLogBuffer;->tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    iget-object v3, v1, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v3}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iput-object p0, v2, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v2, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/log/table/Diffable;->logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
