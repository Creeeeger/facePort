.class public final Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
.super Lio/reactivex/internal/schedulers/NewThreadWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public expirationTime:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-void
.end method
