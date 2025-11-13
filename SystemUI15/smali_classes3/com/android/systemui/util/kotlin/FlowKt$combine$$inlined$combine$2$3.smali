.class public final Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;
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
.field final synthetic $transform$inlined:Lkotlin/jvm/functions/Function8;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function8;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->$transform$inlined:Lkotlin/jvm/functions/Function8;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->invoke(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->$transform$inlined:Lkotlin/jvm/functions/Function8;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function8;)V

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->$transform$inlined:Lkotlin/jvm/functions/Function8;

    const/4 v7, 0x0

    aget-object v9, v5, v7

    aget-object v10, v5, v4

    aget-object v11, v5, v3

    const/4 v7, 0x3

    aget-object v12, v5, v7

    const/4 v7, 0x4

    aget-object v13, v5, v7

    const/4 v7, 0x5

    aget-object v14, v5, v7

    const/4 v7, 0x6

    aget-object v5, v5, v7

    iput-object v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->label:I

    move-object v8, v6

    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v5

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v16

    invoke-virtual/range {v8 .. v16}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$2$3;->$transform$inlined:Lkotlin/jvm/functions/Function8;

    const/4 v2, 0x0

    aget-object v4, v0, v2

    const/4 v2, 0x1

    aget-object v5, v0, v2

    const/4 v2, 0x2

    aget-object v6, v0, v2

    const/4 v2, 0x3

    aget-object v7, v0, v2

    const/4 v2, 0x4

    aget-object v8, v0, v2

    const/4 v2, 0x5

    aget-object v9, v0, v2

    const/4 v2, 0x6

    aget-object v0, v0, v2

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v0

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual/range {v3 .. v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
