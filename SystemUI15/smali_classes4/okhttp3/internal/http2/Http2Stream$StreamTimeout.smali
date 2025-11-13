.class public final Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public final exitAndThrowIfTimedOut()V
    .locals 1

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public final timedOut()V
    .locals 7

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v5

    :try_start_0
    iget-wide v0, v5, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v2, v5, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    monitor-exit v5

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, v5, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const p0, 0x3b9aca00

    int-to-long v2, p0

    add-long/2addr v0, v2

    iput-wide v0, v5, Lokhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    iget-object p0, v5, Lokhttp3/internal/http2/Http2Connection;->writerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    const-string v2, " ping"

    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lokhttp3/internal/http2/Http2Connection$sendDegradedPingLater$$inlined$execute$1;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, v3

    move v2, v4

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$sendDegradedPingLater$$inlined$execute$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0
.end method
