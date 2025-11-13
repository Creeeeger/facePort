.class public final Lio/reactivex/Scheduler$DisposeTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# instance fields
.field public final decoratedRun:Ljava/lang/Runnable;

.field public runner:Ljava/lang/Thread;

.field public final w:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    iget-boolean p0, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    iget-object p0, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/Scheduler$DisposeTask;->w:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    throw v1
.end method
