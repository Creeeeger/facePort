.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    iget-object v3, v1, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iget-object v4, v0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v7, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-static {v7}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    iget-object v12, v1, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    iget-object v7, v0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v13, "Expect"

    invoke-virtual {v7, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "100-continue"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1, v8}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v2

    :cond_0
    move v13, v8

    move-object v7, v10

    :goto_0
    if-nez v7, :cond_1

    iput-boolean v9, v1, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    iget-object v8, v0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0, v14, v15}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v8

    new-instance v11, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    invoke-direct {v11, v1, v8, v14, v15}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    new-instance v8, Lokio/RealBufferedSink;

    invoke-direct {v8, v11}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    invoke-virtual {v4, v8}, Lokhttp3/RequestBody;->writeTo(Lokio/RealBufferedSink;)V

    invoke-virtual {v8}, Lokio/RealBufferedSink;->close()V

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v1, v8, v9, v10}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v4, v12, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    :goto_1
    move v8, v13

    goto :goto_2

    :cond_3
    invoke-virtual {v11, v1, v8, v9, v10}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-object v7, v10

    :goto_2
    :try_start_2
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_4

    invoke-virtual {v1, v9}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v8, v9

    :cond_4
    iput-object v0, v7, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v4, v12, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v4, v7, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v5, v7, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v7, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    iget v7, v4, Lokhttp3/Response;->code:I

    const/16 v11, 0x64

    if-ne v7, v11, :cond_6

    invoke-virtual {v1, v9}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iput-object v0, v4, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v0, v12, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v0, v4, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-wide v5, v4, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    iget v7, v4, Lokhttp3/Response;->code:I

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x65

    if-ne v7, v0, :cond_7

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v4}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v4}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    :try_start_3
    const-string v3, "Content-Type"

    iget-object v5, v4, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, v10

    :goto_3
    invoke-interface {v2, v4}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    move-result-wide v5

    invoke-interface {v2, v4}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    move-result-object v4

    new-instance v8, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    invoke-direct {v8, v1, v4, v5, v6}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V

    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    new-instance v9, Lokio/RealBufferedSource;

    invoke-direct {v9, v8}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    invoke-direct {v4, v3, v5, v6, v9}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    iput-object v4, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :goto_4
    iget-object v1, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v1, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v10

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    :cond_b
    const/16 v1, 0xcc

    if-eq v7, v1, :cond_c

    const/16 v1, 0xcd

    if-ne v7, v1, :cond_f

    :cond_c
    iget-object v1, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    goto :goto_6

    :cond_d
    const-wide/16 v1, -0x1

    :goto_6
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "HTTP "

    const-string v3, " had non-zero Content-Length: "

    invoke-static {v7, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v2

    :catch_3
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    throw v0
.end method
