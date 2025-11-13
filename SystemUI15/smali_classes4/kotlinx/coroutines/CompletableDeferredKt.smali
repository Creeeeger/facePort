.class public abstract Lkotlinx/coroutines/CompletableDeferredKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-object v0
.end method
