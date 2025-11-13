.class public final Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/SingleObserver;


# instance fields
.field public final mapper:Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;

.field public final t:Lio/reactivex/SingleObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleObserver;Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->mapper:Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->mapper:Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->t:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
