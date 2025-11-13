.class public final Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field public final tasks:Lio/reactivex/disposables/CompositeDisposable;

.field public final threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, v0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    sget-object p1, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v1, p1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object p1, p1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v1, v3

    iget-object p0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    iput-wide v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    iget-object v0, v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, v0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method
