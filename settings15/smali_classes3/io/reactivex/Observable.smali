.class public abstract Lio/reactivex/Observable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final observeOn(Lio/reactivex/android/schedulers/HandlerScheduler;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;
    .locals 2

    sget v0, Lio/reactivex/Flowable;->BUFFER_SIZE:I

    if-lez v0, :cond_0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v1, p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/Observable;Lio/reactivex/android/schedulers/HandlerScheduler;I)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize > 0 required but it was "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subscribe(Lio/reactivex/Observer;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeActual(Lio/reactivex/Observer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public abstract subscribeActual(Lio/reactivex/Observer;)V
.end method
