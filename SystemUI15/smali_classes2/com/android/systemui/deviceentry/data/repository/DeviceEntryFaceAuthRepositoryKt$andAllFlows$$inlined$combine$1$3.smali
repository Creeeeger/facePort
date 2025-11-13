.class public final Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;
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
.field final synthetic $combinedLoggingInfo$inlined:Ljava/lang/String;

.field final synthetic $tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

.field final synthetic $this_andAllFlows$inlined:Ljava/util/List;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$combinedLoggingInfo$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$this_andAllFlows$inlined:Ljava/util/List;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$combinedLoggingInfo$inlined:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$this_andAllFlows$inlined:Ljava/util/List;

    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Boolean;

    array-length v3, v1

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    aget-object v4, v1, v3

    new-instance v5, Lkotlin/ranges/IntRange;

    array-length v6, v1

    sub-int/2addr v6, v2

    invoke-direct {v5, v2, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v5

    :goto_0
    iget-boolean v6, v5, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    const-string v7, ""

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v6

    aget-object v8, v1, v6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v9, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v10, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$this_andAllFlows$inlined:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7, v6, v8}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v5, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->$combinedLoggingInfo$inlined:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7, v5, v1}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty array can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
