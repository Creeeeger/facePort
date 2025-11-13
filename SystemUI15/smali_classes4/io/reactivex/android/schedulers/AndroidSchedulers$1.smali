.class public final Lio/reactivex/android/schedulers/AndroidSchedulers$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/android/schedulers/HandlerScheduler;

    return-object p0
.end method
