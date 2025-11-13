.class final Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;
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
.field final synthetic $dumpName:Ljava/lang/String;

.field final synthetic $this_dumpWhileCollecting:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/util/kotlin/FlowDumperImpl;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/util/kotlin/FlowDumperImpl;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$dumpName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$this_dumpWhileCollecting:Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$dumpName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$this_dumpWhileCollecting:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;-><init>(Ljava/lang/String;Lcom/android/systemui/util/kotlin/FlowDumperImpl;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$dumpName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {v4, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$getIdString(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->$this_dumpWhileCollecting:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;

    iget-object v6, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-direct {v4, v6, v5, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;-><init>(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Lkotlin/Pair;Lkotlinx/coroutines/flow/FlowCollector;)V

    iput-object v5, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->label:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v5

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$getFlowCollectionMap$p(Lcom/android/systemui/util/kotlin/FlowDumperImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {p0, v2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$updateRegistration(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p1

    move-object v0, v5

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {v1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$getFlowCollectionMap$p(Lcom/android/systemui/util/kotlin/FlowDumperImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {p0, v2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$updateRegistration(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Z)V

    throw p1
.end method
