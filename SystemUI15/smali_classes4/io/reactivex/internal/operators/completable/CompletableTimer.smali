.class public final Lio/reactivex/internal/operators/completable/CompletableTimer;
.super Lio/reactivex/Completable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final delay:J

.field public final scheduler:Lio/reactivex/Scheduler;

.field public final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->delay:J

    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/internal/observers/CallbackCompletableObserver;)V
    .locals 4

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v2, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->delay:J

    invoke-virtual {v1, v0, v2, v3, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne p1, v1, :cond_1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_2
    :goto_0
    return-void
.end method
