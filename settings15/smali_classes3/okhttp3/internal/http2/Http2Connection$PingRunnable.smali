.class public final Lokhttp3/internal/http2/Http2Connection$PingRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final payload1:I

.field public final payload2:I

.field public final reply:Z

.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;ZII)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget p0, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    if-nez v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-boolean v3, v0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :try_start_2
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3, v2, p0, v1}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
