.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;
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
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/table/TableLogBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnPrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnName:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnPrefix:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnPrefix:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;->$columnName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
