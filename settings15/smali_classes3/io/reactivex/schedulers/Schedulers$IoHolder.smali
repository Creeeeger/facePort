.class public abstract Lio/reactivex/schedulers/Schedulers$IoHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT:Lio/reactivex/internal/schedulers/IoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>()V

    sput-object v0, Lio/reactivex/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex/internal/schedulers/IoScheduler;

    return-void
.end method
