.class public abstract Lcom/android/systemui/log/table/DiffableKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)V

    new-instance p3, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$1;

    invoke-direct {p3, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$1;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$2;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p3, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$3;

    const-string v1, "Repo"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$3;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p3, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$7;

    invoke-direct {p3, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$7;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$8;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p3, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;

    const-string v1, ""

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$9;

    invoke-direct {p3, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$9;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p3, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$2;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p4, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$5;

    invoke-direct {p4, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$5;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p4, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$5;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$5;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance p4, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$11;

    invoke-direct {p4, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$11;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$12;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$12;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p4, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p4, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$3;

    invoke-direct {p4, v0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$3;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p4, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
