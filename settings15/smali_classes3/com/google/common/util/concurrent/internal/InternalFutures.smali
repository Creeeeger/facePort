.class public abstract Lcom/google/common/util/concurrent/internal/InternalFutures;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;
    .locals 1

    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
