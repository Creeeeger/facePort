.class public final Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 13

    const/4 v0, 0x1

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move-wide v7, v6

    move-object v6, v5

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/connection/RealConnection;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0, v9, v1, v2}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v10

    if-lez v10, :cond_0

    add-int/2addr v5, v0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    iget-wide v10, v9, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    sub-long v10, v1, v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v6, v9

    move-wide v7, v10

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v9

    goto :goto_0

    :goto_2
    monitor-exit v9

    throw p0

    :cond_2
    iget-wide v9, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    iget v3, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v4, v3, :cond_3

    goto :goto_3

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v9, v7

    goto :goto_4

    :cond_4
    if-lez v5, :cond_5

    goto :goto_4

    :cond_5
    const-wide/16 v9, -0x1

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter v6

    :try_start_1
    iget-object v3, v6, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/2addr v3, v0

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_7

    monitor-exit v6

    goto :goto_4

    :cond_7
    :try_start_2
    iget-wide v3, v6, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v3, v7

    cmp-long v1, v3, v1

    if-eqz v1, :cond_8

    monitor-exit v6

    goto :goto_4

    :cond_8
    :try_start_3
    iput-boolean v0, v6, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    iget-object v0, v6, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    :cond_9
    :goto_4
    return-wide v9

    :catchall_1
    move-exception p0

    monitor-exit v6

    throw p0
.end method
