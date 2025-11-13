.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $csLog:Ljava/lang/String;

.field final synthetic $curTime:J

.field final synthetic $slowLog:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iput-wide p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    iget-object v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    sget v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->$r8$clinit:I

    iget-object v3, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/collections/ArrayDeque;

    monitor-enter v3

    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/collections/ArrayDeque;

    iget v4, p1, Lkotlin/collections/ArrayDeque;->size:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v3

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
