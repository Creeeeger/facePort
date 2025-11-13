.class public abstract Lkotlinx/atomicfu/AtomicFU;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 2

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    new-instance v1, Lkotlinx/atomicfu/AtomicBoolean;

    invoke-direct {v1, p0, v0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(ZLkotlinx/atomicfu/TraceBase;)V

    return-object v1
.end method

.method public static final atomic(I)Lkotlinx/atomicfu/AtomicInt;
    .locals 2

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    new-instance v1, Lkotlinx/atomicfu/AtomicInt;

    invoke-direct {v1, p0, v0}, Lkotlinx/atomicfu/AtomicInt;-><init>(ILkotlinx/atomicfu/TraceBase;)V

    return-object v1
.end method

.method public static final atomic(J)Lkotlinx/atomicfu/AtomicLong;
    .locals 2

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    new-instance v1, Lkotlinx/atomicfu/AtomicLong;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/atomicfu/AtomicLong;-><init>(JLkotlinx/atomicfu/TraceBase;)V

    return-object v1
.end method

.method public static final atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;
    .locals 2

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    new-instance v1, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v1, p0, v0}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;Lkotlinx/atomicfu/TraceBase;)V

    return-object v1
.end method
