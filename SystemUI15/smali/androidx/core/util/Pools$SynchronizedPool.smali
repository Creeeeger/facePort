.class public final Landroidx/core/util/Pools$SynchronizedPool;
.super Landroidx/core/util/Pools$SimplePool;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final release(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
