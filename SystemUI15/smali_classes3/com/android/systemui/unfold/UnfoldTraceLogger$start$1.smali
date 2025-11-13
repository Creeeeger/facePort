.class final Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldTraceLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTraceLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldTraceLogger;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->this$0:Lcom/android/systemui/unfold/UnfoldTraceLogger;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->this$0:Lcom/android/systemui/unfold/UnfoldTraceLogger;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;-><init>(Lcom/android/systemui/unfold/UnfoldTraceLogger;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/app/tracing/TraceStateLogger;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-string v4, "FoldUpdate"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->this$0:Lcom/android/systemui/unfold/UnfoldTraceLogger;

    iget-object v1, v1, Lcom/android/systemui/unfold/UnfoldTraceLogger;->foldStateRepository:Lcom/android/systemui/unfold/data/repository/FoldStateRepository;

    check-cast v1, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl;->getFoldUpdate()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1$1;-><init>(Lcom/android/app/tracing/TraceStateLogger;)V

    iput v2, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;->label:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
