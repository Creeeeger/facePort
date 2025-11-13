.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static retryAfter(Lokhttp3/Response;I)I
    .locals 1

    const-string v0, "Retry-After"

    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\\d+"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method public final followUpRequest(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lokhttp3/Response;->code:I

    iget-object v3, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v3, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x134

    const/16 v6, 0x133

    const/4 v7, 0x1

    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_e

    const/16 v8, 0x191

    if-eq v2, v8, :cond_d

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_a

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-eqz p0, :cond_3

    iget p0, p0, Lokhttp3/Response;->code:I

    if-ne p0, p2, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1, v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p0

    if-lez p0, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object p0

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_6

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-interface {p0, v1, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-eqz p0, :cond_8

    iget p0, p0, Lokhttp3/Response;->code:I

    if-ne p0, p2, :cond_8

    return-object v0

    :cond_8
    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object p0

    :cond_9
    return-object v0

    :cond_a
    if-eqz p2, :cond_c

    iget-object p0, p2, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    iget-object p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object p0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object p0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v7

    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    iget-object p0, p2, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    monitor-enter p0

    :try_start_0
    iput-boolean v7, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_c
    :goto_1
    return-object v0

    :cond_d
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    invoke-interface {p0, v1, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_e
    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-boolean p2, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    if-nez p2, :cond_f

    goto/16 :goto_6

    :cond_f
    const-string p2, "Location"

    iget-object v1, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    goto :goto_2

    :cond_10
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_19

    iget-object v1, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    invoke-virtual {v2, v1, p2}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    goto :goto_4

    :cond_11
    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_19

    iget-object v1, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v2, p2, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    if-nez p0, :cond_12

    goto :goto_6

    :cond_12
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    iget p0, p1, Lokhttp3/Response;->code:I

    sget-object v2, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "PROPFIND"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    if-eq p0, v5, :cond_13

    if-ne p0, v6, :cond_14

    :cond_13
    move v4, v7

    :cond_14
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_15

    if-eq p0, v5, :cond_15

    if-eq p0, v6, :cond_15

    const-string p0, "GET"

    invoke-virtual {v1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    goto :goto_5

    :cond_15
    if-eqz v4, :cond_16

    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    :cond_16
    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    :goto_5
    if-nez v4, :cond_17

    const-string p0, "Transfer-Encoding"

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    const-string p0, "Content-Length"

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_17
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-static {p0, p2}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, "Authorization"

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_18
    iput-object p2, v1, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    :cond_19
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iget-object v4, v2, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move v0, v3

    :goto_0
    iget-object v11, v4, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    if-nez v11, :cond_f

    monitor-enter v4

    :try_start_0
    iget-boolean v11, v4, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    xor-int/2addr v11, v3

    if-eqz v11, :cond_e

    iget-boolean v11, v4, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    xor-int/2addr v11, v3

    if-eqz v11, :cond_d

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    if-eqz v0, :cond_2

    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v11, v4, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v12, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-boolean v13, v12, Lokhttp3/HttpUrl;->isHttps:Z

    if-eqz v13, :cond_1

    iget-object v13, v4, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v14, v13, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_0

    iget-object v15, v13, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v13, v13, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    new-instance v15, Lokhttp3/Address;

    iget-object v13, v4, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v14, v13, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iget-object v7, v13, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v3, v13, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v6, v13, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    move-object/from16 v25, v8

    iget-object v8, v13, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    move/from16 v26, v10

    iget-object v10, v13, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v13, v13, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    move-object/from16 v16, v13

    iget-object v13, v12, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget v12, v12, Lokhttp3/HttpUrl;->port:I

    move/from16 v20, v12

    move-object v12, v15

    move-object/from16 v24, v16

    move-object/from16 v16, v14

    move/from16 v14, v20

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    invoke-direct/range {v12 .. v24}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    iget-object v3, v4, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-direct {v0, v11, v1, v4, v3}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;)V

    iput-object v0, v4, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_2

    :cond_2
    move-object/from16 v25, v8

    move/from16 v26, v10

    :goto_2
    :try_start_1
    iget-boolean v0, v4, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    :try_start_2
    invoke-virtual {v2, v5}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_2
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    :try_start_3
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1, v0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v9}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iget-object v5, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-nez v5, :cond_3

    iput-object v0, v1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v4, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Lokhttp3/internal/connection/Exchange;

    move-object/from16 v1, p0

    invoke-virtual {v1, v9, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;

    move-result-object v5

    if-nez v5, :cond_7

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v4, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    iput-boolean v1, v4, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    iget-object v0, v4, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-virtual {v4, v1}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    return-object v9

    :cond_7
    :try_start_4
    iget-object v0, v9, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    const/4 v6, 0x1

    add-int/lit8 v10, v26, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_9

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    move-object/from16 v8, v25

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_9
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v6, v0

    instance-of v0, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    invoke-virtual {v1, v6, v4, v5, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v8, v25

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v4, v7}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    move v3, v7

    move/from16 v10, v26

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v8, v25

    :try_start_6
    invoke-static {v6, v8}, Lokhttp3/internal/Util;->withSuppressed(Ljava/lang/Exception;Ljava/util/List;)V

    throw v6

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v8, v25

    const/4 v3, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v4, v5, v7}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    move v3, v6

    move v0, v7

    move/from16 v10, v26

    goto/16 :goto_0

    :cond_b
    :try_start_7
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->withSuppressed(Ljava/lang/Exception;Ljava/util/List;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    invoke-virtual {v4, v1}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_d
    :try_start_8
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_7
    monitor-exit v4

    throw v0

    :cond_f
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z
    .locals 2

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    const/4 p3, 0x0

    if-nez p0, :cond_0

    return p3

    :cond_0
    if-eqz p4, :cond_1

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_1

    return p3

    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_3

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_5

    if-nez p4, :cond_5

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
    return p3

    :cond_6
    :goto_1
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->refusedStreamCount:I

    const/4 p2, 0x1

    if-nez p1, :cond_7

    iget p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionShutdownCount:I

    if-nez p4, :cond_7

    iget p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->otherFailureCount:I

    if-nez p4, :cond_7

    move p0, p3

    goto :goto_4

    :cond_7
    iget-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    if-eqz p4, :cond_9

    :cond_8
    :goto_2
    move p0, p2

    goto :goto_4

    :cond_9
    const/4 p4, 0x0

    if-gt p1, p2, :cond_d

    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionShutdownCount:I

    if-gt p1, p2, :cond_d

    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->otherFailureCount:I

    if-lez p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/internal/connection/RealCall;

    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz p1, :cond_d

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    monitor-exit p1

    goto :goto_3

    :cond_b
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    monitor-exit p1

    goto :goto_3

    :cond_c
    :try_start_2
    iget-object p4, p1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_d
    :goto_3
    if-eqz p4, :cond_e

    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result p1

    if-ne p1, p2, :cond_f

    goto :goto_2

    :cond_f
    iget-object p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result p0

    :goto_4
    if-nez p0, :cond_10

    return p3

    :cond_10
    return p2
.end method
