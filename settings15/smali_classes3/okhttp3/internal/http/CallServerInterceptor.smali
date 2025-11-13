.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 13

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    iget-object v2, v0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener$1;

    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v5, p1, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lokhttp3/internal/connection/Exchange;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    if-eqz v5, :cond_3

    iget-object v10, p1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v11, "Expect"

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "100-continue"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_1
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v10

    move v11, v6

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw p0

    :cond_0
    move-object v10, v7

    move v11, v8

    :goto_0
    if-nez v10, :cond_1

    iput-boolean v8, v0, Lokhttp3/internal/connection/Exchange;->duplex:Z

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1, v6, v7}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v9

    new-instance v12, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    invoke-direct {v12, v0, v9, v6, v7}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    new-instance v6, Lokio/RealBufferedSink;

    invoke-direct {v6, v12}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    invoke-virtual {v5, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v6}, Lokio/RealBufferedSink;->close()V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v0, v6, v8, v7}, Lokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v5

    iget-object v5, v5, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    :goto_1
    move-object v7, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v0, v6, v8, v7}, Lokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    move v11, v8

    :goto_2
    :try_start_2
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v11, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {v0, v8}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v7

    :cond_5
    iput-object p1, v7, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v2, v7, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v3, v7, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v7, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    iget v5, v2, Lokhttp3/Response;->code:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_6

    invoke-virtual {v0, v8}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v2

    iput-object p1, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object p1, v2, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v3, v2, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    iget v5, v2, Lokhttp3/Response;->code:I

    :cond_6
    iget-boolean p0, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz p0, :cond_7

    const/16 p0, 0x65

    if-ne v5, p0, :cond_7

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p0

    sget-object p1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$1;

    iput-object p1, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p0

    :try_start_3
    const-string p1, "Content-Type"

    invoke-virtual {v2, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    move-result-wide v3

    invoke-interface {v1, v2}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    move-result-object v2

    new-instance v6, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    invoke-direct {v6, v0, v2, v3, v4}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V

    new-instance v2, Lokhttp3/internal/http/RealResponseBody;

    new-instance v7, Lokio/RealBufferedSource;

    invoke-direct {v7, v6}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    invoke-direct {v2, p1, v3, v4, v7}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    iput-object v2, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    :goto_3
    iget-object p1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object p1, p1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "close"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    :cond_9
    const/16 p1, 0xcc

    if-eq v5, p1, :cond_a

    const/16 p1, 0xcd

    if-ne v5, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_c

    :cond_b
    return-object p0

    :cond_c
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "HTTP "

    const-string v1, " had non-zero Content-Length: "

    invoke-static {v5, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw p0

    :catch_3
    move-exception p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
