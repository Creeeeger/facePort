.class public final Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;
.super Lokhttp3/internal/concurrent/Task;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $pingIntervalNanos$inlined:J

.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-wide p4, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    const/4 p1, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p0, p2, p4, p1, p3}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 9

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    iget-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    iput-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v6

    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v3, v6, v6}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    :goto_2
    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
