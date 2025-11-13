.class public final Lio/reactivex/internal/operators/observable/ObservableHide;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final subscribeActual(Lio/reactivex/Observer;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;-><init>(Lio/reactivex/Observer;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/Observable;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
