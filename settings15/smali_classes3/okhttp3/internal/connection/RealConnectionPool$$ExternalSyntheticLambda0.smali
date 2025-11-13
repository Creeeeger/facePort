.class public final synthetic Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v5, -0x8000000000000000L

    move v7, v3

    move v8, v7

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {p0, v9, v0, v1}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v10

    if-lez v10, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    iget-wide v10, v9, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v10, v0, v10

    cmp-long v12, v10, v5

    if-lez v12, :cond_1

    move-object v4, v9

    move-wide v5, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_3
    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v2, v5, v0

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    if-gez v2, :cond_7

    iget v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v7, v2, :cond_4

    goto :goto_2

    :cond_4
    if-lez v7, :cond_5

    sub-long/2addr v0, v5

    monitor-exit p0

    goto :goto_3

    :cond_5
    if-lez v8, :cond_6

    monitor-exit p0

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    monitor-exit p0

    move-wide v0, v11

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v4, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    move-wide v0, v9

    :goto_3
    cmp-long v2, v0, v11

    if-nez v2, :cond_8

    return-void

    :cond_8
    cmp-long v2, v0, v9

    if-lez v2, :cond_0

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    monitor-enter p0

    long-to-int v0, v0

    :try_start_1
    invoke-virtual {p0, v4, v5, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    :goto_4
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
