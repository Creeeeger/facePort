.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Lkotlinx/coroutines/sync/SemaphoreImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field public final owner:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;-><init>(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    :goto_0
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    new-instance p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;

    return-void
.end method


# virtual methods
.method public final lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v2, v0, v1}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gtz v0, :cond_8

    if-nez p1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v4, :cond_4

    if-ne v0, p1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    :cond_6
    :goto_1
    if-eq v1, v2, :cond_7

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v0, v5}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unexpected"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "This mutex is already locked by the specified owner: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object p2

    :try_start_0
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    invoke-direct {v1, p0, p2, p1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquire(Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_b

    goto :goto_3

    :cond_b
    move-object p0, v0

    :goto_3
    if-ne p0, p1, :cond_c

    move-object v0, p0

    goto :goto_4

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    throw p0

    :cond_c
    :goto_4
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mutex@"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[isLocked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",owner="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlock(Ljava/lang/Object;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "This mutex is locked by "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->release()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This mutex is not locked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
