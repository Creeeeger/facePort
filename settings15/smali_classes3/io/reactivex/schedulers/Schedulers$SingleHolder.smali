.class public abstract Lio/reactivex/schedulers/Schedulers$SingleHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT:Lio/reactivex/internal/schedulers/SingleScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/SingleScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SingleScheduler;-><init>()V

    sput-object v0, Lio/reactivex/schedulers/Schedulers$SingleHolder;->DEFAULT:Lio/reactivex/internal/schedulers/SingleScheduler;

    return-void
.end method
