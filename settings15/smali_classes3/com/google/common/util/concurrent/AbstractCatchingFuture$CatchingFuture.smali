.class public final Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;
.super Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public exceptionType:Ljava/lang/Class;

.field public fallback:Ljava/lang/Object;

.field public inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public final afterDone()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v3, v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    return-void
.end method

.method public final pendingToString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inputFuture=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    or-int/2addr v5, v6

    if-nez v2, :cond_2

    move v3, v4

    :cond_2
    or-int/2addr v3, v5

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :try_start_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    invoke-static {v4}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_4
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_5
    :goto_3
    move-object v5, v3

    goto :goto_5

    :goto_4
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Future type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " threw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " without a cause"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_6
    move-object v4, v5

    goto :goto_3

    :goto_5
    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    check-cast v0, Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/FluentFuture;)V

    return-void

    :cond_8
    :try_start_1
    check-cast v2, Lcom/google/common/base/Function;

    invoke-interface {v2, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    throw v0

    :cond_a
    :goto_6
    return-void
.end method
