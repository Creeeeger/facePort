.class public final Landroidx/room/concurrent/CloseBarrier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final blockers:Lkotlinx/atomicfu/AtomicInt;

.field public final closeInitiated:Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p1, p0, Landroidx/room/concurrent/CloseBarrier;->blockers:Lkotlinx/atomicfu/AtomicInt;

    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/concurrent/CloseBarrier;->closeInitiated:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final block$room_runtime_release()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/room/concurrent/CloseBarrier;->closeInitiated:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/room/concurrent/CloseBarrier;->blockers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final unblock$room_runtime_release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/room/concurrent/CloseBarrier;->blockers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    iget-object v0, p0, Landroidx/room/concurrent/CloseBarrier;->blockers:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Unbalanced call to unblock() detected."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
