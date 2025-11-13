.class public abstract Lio/reactivex/Scheduler$Worker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
.end method

.method public schedule(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
