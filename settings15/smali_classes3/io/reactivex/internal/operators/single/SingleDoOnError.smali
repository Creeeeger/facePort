.class public final Lio/reactivex/internal/operators/single/SingleDoOnError;
.super Lio/reactivex/Single;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final onError:Lio/reactivex/functions/Consumer;

.field public final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/single/SingleDoFinally;Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnError;->source:Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;-><init>(Lio/reactivex/internal/operators/single/SingleDoOnError;Lio/reactivex/SingleObserver;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDoOnError;->source:Lio/reactivex/SingleSource;

    check-cast p0, Lio/reactivex/Single;

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
