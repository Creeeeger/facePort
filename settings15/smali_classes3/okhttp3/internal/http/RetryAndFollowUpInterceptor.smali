.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iget-object v9, v2, Lokhttp3/internal/http/RealInterceptorChain;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v10, 0x0

    move-object v12, v0

    move-object v13, v10

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v9, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v3, v12, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v9, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_1

    iget-object v0, v9, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_2

    invoke-virtual {v9, v10, v15}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    iput-object v10, v9, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    :goto_1
    iput-object v12, v9, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v3, v12, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v4, v3, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v9, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    if-eqz v4, :cond_3

    iget-object v4, v5, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v6, v5, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v7, v5, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_2

    :cond_3
    move-object/from16 v21, v10

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    :goto_2
    new-instance v6, Lokhttp3/Address;

    iget-object v4, v5, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns$$ExternalSyntheticLambda0;

    iget-object v7, v5, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v8, v5, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    iget-object v11, v5, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iget-object v15, v5, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v5, v5, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iget v10, v3, Lokhttp3/HttpUrl;->port:I

    iget-object v3, v3, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    move/from16 v18, v10

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v15

    move-object/from16 v27, v5

    invoke-direct/range {v16 .. v27}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns$$ExternalSyntheticLambda0;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator$$ExternalSyntheticLambda0;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    iget-object v7, v9, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/RealCall;

    iget-object v8, v9, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener$1;

    iget-object v5, v9, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/RealCall;Lokhttp3/EventListener$1;)V

    iput-object v0, v9, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    :goto_3
    invoke-virtual {v9}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v12, v9, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_4

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v13}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    iput-object v3, v4, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    iget-object v4, v3, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-nez v4, :cond_5

    iput-object v3, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :cond_4
    move-object v13, v0

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    sget-object v0, Lokhttp3/OkHttpClient$1;->instance:Lokhttp3/OkHttpClient$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v13, Lokhttp3/Response;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_6

    iget-object v3, v0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v3}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    iget v4, v13, Lokhttp3/Response;->code:I

    iget-object v5, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v5, v5, Lokhttp3/Request;->method:Ljava/lang/String;

    const-string v6, "GET"

    iget-object v7, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    const/16 v8, 0x133

    if-eq v4, v8, :cond_16

    const/16 v8, 0x134

    if-eq v4, v8, :cond_16

    const/16 v8, 0x191

    if-eq v4, v8, :cond_15

    const v8, 0x7fffffff

    const/16 v10, 0x1f7

    if-eq v4, v10, :cond_11

    const/16 v10, 0x197

    if-eq v4, v10, :cond_e

    const/16 v3, 0x198

    if-eq v4, v3, :cond_8

    packed-switch v4, :pswitch_data_0

    :cond_7
    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_8
    iget-boolean v4, v7, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    iget-object v4, v13, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-eqz v4, :cond_a

    iget v4, v4, Lokhttp3/Response;->code:I

    if-ne v4, v3, :cond_a

    goto :goto_6

    :cond_a
    const-string v3, "Retry-After"

    invoke-virtual {v13, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    const-string v4, "\\d+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_c
    :goto_7
    if-lez v8, :cond_d

    goto :goto_6

    :cond_d
    iget-object v3, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    :goto_8
    move-object v12, v3

    goto/16 :goto_f

    :cond_e
    if-eqz v3, :cond_f

    iget-object v3, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    goto :goto_9

    :cond_f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_10

    iget-object v3, v7, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v3, v13, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-eqz v3, :cond_12

    iget v3, v3, Lokhttp3/Response;->code:I

    if-ne v3, v10, :cond_12

    goto :goto_6

    :cond_12
    const-string v3, "Retry-After"

    invoke-virtual {v13, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_a

    :cond_13
    const-string v4, "\\d+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_14
    :goto_a
    if-nez v8, :cond_7

    iget-object v3, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    goto :goto_8

    :cond_15
    iget-object v3, v7, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_16
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "HEAD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_6

    :cond_17
    :pswitch_0
    iget-boolean v3, v7, Lokhttp3/OkHttpClient;->followRedirects:Z

    if-nez v3, :cond_18

    goto/16 :goto_6

    :cond_18
    const-string v3, "Location"

    invoke-virtual {v13, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    goto/16 :goto_6

    :cond_19
    iget-object v4, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v4, v4, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v8, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v8}, Lokhttp3/HttpUrl$Builder;-><init>()V

    invoke-virtual {v8, v4, v3}, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_1b

    goto/16 :goto_6

    :cond_1b
    iget-object v4, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v4, v4, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v4, v4, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v8, v3, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-boolean v4, v7, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    if-nez v4, :cond_1c

    goto/16 :goto_6

    :cond_1c
    iget-object v4, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "PROPFIND"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x1

    xor-int/2addr v7, v10

    if-eqz v7, :cond_1d

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    goto :goto_e

    :cond_1d
    if-eqz v8, :cond_1e

    iget-object v6, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v6, v6, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    goto :goto_d

    :cond_1e
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    :goto_e
    if-nez v8, :cond_1f

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_1f
    iget-object v5, v13, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v5, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-static {v5, v3}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "Authorization"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_20
    iput-object v3, v4, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    goto/16 :goto_8

    :goto_f
    if-nez v12, :cond_23

    if-eqz v0, :cond_22

    iget-boolean v0, v0, Lokhttp3/internal/connection/Exchange;->duplex:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v9, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-nez v0, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, v9, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    iget-object v0, v9, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$1;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    goto :goto_10

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_22
    :goto_10
    return-object v13

    :cond_23
    iget-object v3, v13, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v3, v9, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    :try_start_2
    iget-object v4, v9, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_11

    :cond_24
    const/4 v4, 0x0

    :goto_11
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_25

    iget-object v3, v0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v3}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    iget-object v3, v0, Lokhttp3/internal/connection/Exchange;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5, v5, v4}, Lokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    goto :goto_12

    :cond_25
    const/4 v4, 0x0

    :goto_12
    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0x14

    if-gt v14, v0, :cond_26

    :goto_13
    move-object v10, v4

    goto/16 :goto_0

    :cond_26
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many follow-up requests: "

    invoke-static {v14, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    :try_start_4
    instance-of v0, v3, Lokhttp3/internal/http2/ConnectionShutdownException;

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-virtual {v1, v3, v9, v0, v12}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_27

    invoke-virtual {v9}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    const/4 v5, 0x0

    goto :goto_13

    :cond_27
    :try_start_5
    throw v3

    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v9, v5, v12}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_28

    invoke-virtual {v9}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto :goto_13

    :cond_28
    :try_start_6
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_14
    invoke-virtual {v9}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw v0

    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    const/4 p4, 0x0

    if-nez p0, :cond_0

    return p4

    :cond_0
    if-eqz p3, :cond_1

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_1

    return p4

    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_3

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_5

    if-nez p3, :cond_5

    goto :goto_1

    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_6

    :cond_5
    :goto_0
    return p4

    :cond_6
    :goto_1
    iget-object p0, p2, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    iget-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter p1

    :try_start_0
    iget-boolean p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_7

    iget-object p0, p2, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return p4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
