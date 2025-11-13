.class public abstract Lkotlinx/atomicfu/AtomicFU;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 1

    new-instance v0, Lkotlinx/atomicfu/AtomicBoolean;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method

.method public static final atomic(I)Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    new-instance v0, Lkotlinx/atomicfu/AtomicInt;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    return-object v0
.end method

.method public static final atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;
    .locals 1

    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
