.class public final Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field public volatile disposed:Z

.field public final poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

.field public final serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field public final timed:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    new-instance p1, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    iget-object p0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method

.method public final schedule(Ljava/lang/Runnable;)V
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    return-void
.end method
