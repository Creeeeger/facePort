.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lokhttp3/internal/NamedRunnable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field public final synthetic val$clearPrevious:Z

.field public final synthetic val$settings:Lokhttp3/internal/http2/Settings;


# direct methods
.method public varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Lokhttp3/internal/http2/Settings;

    const-string p1, "OkHttp %s ACK Settings"

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 11

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Lokhttp3/internal/http2/Settings;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v4, Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    iput v5, v1, Lokhttp3/internal/http2/Settings;->set:I

    iget-object v1, v1, Lokhttp3/internal/http2/Settings;->values:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v5

    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_2

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    iget v8, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    iget-object v7, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget v7, v7, v6

    invoke-virtual {v1, v6, v7}, Lokhttp3/internal/http2/Settings;->set(II)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p0

    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    const/4 v8, 0x0

    if-eq p0, v1, :cond_3

    if-eq p0, v4, :cond_3

    sub-int/2addr p0, v4

    int-to-long v9, p0

    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_2

    :cond_3
    move-wide v9, v6

    :cond_4
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, p0}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    :try_start_3
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_6

    array-length p0, v8

    :goto_4
    if-ge v5, p0, :cond_6

    aget-object v1, v8, v5

    monitor-enter v1

    :try_start_4
    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long v2, v9, v6

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    monitor-exit v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_6
    sget-object p0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;[Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :goto_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
