.class public abstract Lkotlinx/coroutines/SupervisorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-object v0
.end method
