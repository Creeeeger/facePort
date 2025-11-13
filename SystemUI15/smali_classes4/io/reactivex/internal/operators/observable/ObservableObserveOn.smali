.class public final Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bufferSize:I

.field public final delayError:Z

.field public final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource;",
            "Lio/reactivex/Scheduler;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->delayError:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->bufferSize:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/Observer;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    if-eqz v1, :cond_0

    check-cast v2, Lio/reactivex/Observable;

    invoke-virtual {v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->delayError:Z

    iget p0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->bufferSize:I

    invoke-direct {v1, p1, v0, v3, p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/Scheduler$Worker;ZI)V

    check-cast v2, Lio/reactivex/Observable;

    invoke-virtual {v2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
