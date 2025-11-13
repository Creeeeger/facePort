.class public final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public volatile callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final responseCallback:Lretrofit2/OkHttpCall$1;

.field public final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/RealCall;

    return-void
.end method

.method public constructor <init>(Lokhttp3/RealCall;Lretrofit2/OkHttpCall$1;)V
    .locals 1

    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object p1, p1, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object p1, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lretrofit2/OkHttpCall$1;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    const-string v0, "Callback failure for "

    const-string v1, "canceled due to "

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v2, v2, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v2, v2, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$1;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v3}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lretrofit2/OkHttpCall$1;

    iget-object v5, v4, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v5, v2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, v4, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    invoke-interface {v4, v2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v4, v2}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    :goto_1
    iget-object v0, v0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_8

    :goto_2
    move v2, v3

    goto :goto_4

    :goto_3
    move v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_6

    :goto_4
    :try_start_5
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v3, v3, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lretrofit2/OkHttpCall$1;

    invoke-virtual {v1, v2}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_0
    :goto_5
    throw v0

    :goto_6
    if-eqz v2, :cond_1

    sget-object v2, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v0}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lretrofit2/OkHttpCall$1;

    invoke-virtual {v0, v1}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_7
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    goto :goto_1

    :goto_8
    return-void

    :goto_9
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    throw v0
.end method
