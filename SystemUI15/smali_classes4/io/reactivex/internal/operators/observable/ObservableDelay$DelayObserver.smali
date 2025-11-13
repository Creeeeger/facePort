.class public final Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field public final delay:J

.field public final delayError:Z

.field public final downstream:Lio/reactivex/Observer;

.field public final unit:Ljava/util/concurrent/TimeUnit;

.field public upstream:Lio/reactivex/disposables/Disposable;

.field public final w:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->downstream:Lio/reactivex/Observer;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delay:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->w:Lio/reactivex/Scheduler$Worker;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delayError:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 4

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;)V

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delay:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delayError:Z

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delay:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;Ljava/lang/Object;)V

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->delay:J

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->upstream:Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
