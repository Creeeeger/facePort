.class public interface abstract Lcom/android/systemui/util/kotlin/FlowDumper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/util/kotlin/FlowDumper;->dumpFlows(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public abstract dumpFlows(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract dumpReplayCache(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F::",
            "Lkotlinx/coroutines/flow/SharedFlow;",
            ">(TF;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract dumpValue(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F::",
            "Lkotlinx/coroutines/flow/StateFlow;",
            ">(TF;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end method
