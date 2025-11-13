.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public allocationLimit:I

.field public final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field public handshake:Lokhttp3/Handshake;

.field public http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewExchanges:Z

.field public protocol:Lokhttp3/Protocol;

.field public rawSocket:Ljava/net/Socket;

.field public refusedStreamCount:I

.field public final route:Lokhttp3/Route;

.field public routeFailureCount:I

.field public sink:Lokio/RealBufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/RealBufferedSource;

.field public successCount:I

.field public final transmitters:Ljava/util/List;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-void
.end method


# virtual methods
.method public final connect(IIIIZLokhttp3/EventListener$1;)V
    .locals 6

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v0, :cond_10

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    new-instance v2, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v2, v1}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    iget-object v3, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_2

    sget-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication to "

    const-string p3, " not permitted by network security policy"

    invoke-static {p2, v0, p3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_1
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication not enabled for client"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_2
    iget-object v0, v0, Lokhttp3/Address;->protocols:Ljava/util/List;

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_0
    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v4, v4, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_3

    iget-object v3, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, p1, p2, p3, p6}, Lokhttp3/internal/connection/RealConnection;->connectTunnel(IIILokhttp3/EventListener$1;)V

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-nez v3, :cond_4

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_5

    :cond_3
    invoke-virtual {p0, p1, p2, p6}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/EventListener$1;)V

    :cond_4
    invoke-virtual {p0, v2, p4, p6}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/EventListener$1;)V

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v3, v3, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p2, p1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object p2, p2, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_6

    iget-object p1, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Too many tunnel connections attempted: 21"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p1, p0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_6
    :goto_3
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p2

    iput p2, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_4
    return-void

    :goto_5
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v4, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_8

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v3}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_6
    if-eqz p5, :cond_e

    const/4 v4, 0x1

    iput-boolean v4, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    iget-boolean v4, v2, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v5, 0x0

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    instance-of v4, v3, Ljava/net/ProtocolException;

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    instance-of v4, v3, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    instance-of v4, v3, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    instance-of v4, v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    instance-of v5, v3, Ljavax/net/ssl/SSLException;

    :goto_7
    if-eqz v5, :cond_e

    goto/16 :goto_1

    :cond_e
    throw v1

    :cond_f
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final connectSocket(IILokhttp3/EventListener$1;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v1, v0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3, v1, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/AsyncTimeout$source$1;

    move-result-object p1

    new-instance p2, Lokio/RealBufferedSource;

    invoke-direct {p2, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/AsyncTimeout$sink$1;

    move-result-object p1

    new-instance p2, Lokio/RealBufferedSink;

    invoke-direct {p2, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo p1, "throw with null exception"

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/net/ConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to connect to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public final connectTunnel(IIILokhttp3/EventListener$1;)V
    .locals 11

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v2, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    if-eqz v2, :cond_4

    iput-object v2, v0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v6, "Host"

    invoke-virtual {v5, v6, v2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v5, "Proxy-Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v2, v5, v6}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v5, "User-Agent"

    const-string v6, "okhttp/3.14.4"

    invoke-virtual {v2, v5, v6}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v2, Lokhttp3/Response$Builder;

    invoke-direct {v2}, Lokhttp3/Response$Builder;-><init>()V

    iput-object v0, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v5, v2, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    const/16 v5, 0x197

    iput v5, v2, Lokhttp3/Response$Builder;->code:I

    const-string v6, "Preemptive Authenticate"

    iput-object v6, v2, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v6, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$1;

    iput-object v6, v2, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v6, v2, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iget-object v8, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v9, "Proxy-Authenticate"

    const-string v10, "OkHttp-Preemptive"

    invoke-virtual {v8, v9, v10}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    iget-object v2, v1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p4}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/EventListener$1;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-static {p4, v4}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    invoke-direct {p4, v3, v3, v2, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    iget-object v2, v2, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v2}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v3, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iget-object v2, v2, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p3, v0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {p4, p3, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    invoke-virtual {p4}, Lokhttp3/internal/http1/Http1ExchangeCodec;->finishRequest()V

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object p1

    iput-object v0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    cmp-long p3, v2, v6

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4, v2, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    move-result-object p3

    const p4, 0x7fffffff

    invoke-static {p3, p4, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->close()V

    :goto_0
    iget p2, p1, Lokhttp3/Response;->code:I

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_2

    if-ne p2, v5, :cond_1

    iget-object p0, v1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to authenticate with proxy"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lokhttp3/Response;->code:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object p1, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iget-object p0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS tunnel buffered too many bytes!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "url == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/EventListener$1;)V
    .locals 8

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-nez v2, :cond_1

    iget-object p1, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    sget-object p3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v0, p3, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v5, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget v6, v1, Lokhttp3/HttpUrl;->port:I

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz p1, :cond_2

    :try_start_2
    sget-object v4, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    iget-object v5, p3, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-virtual {v4, v0, v1, v5}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    move-object v2, v0

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v5

    iget-object v6, p3, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v6, v1, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object p0, v5, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "Hostname "

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified:\n    certificate: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    DN: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    subjectAltNames: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p3, p3, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v4, v5, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-virtual {p3, v1, v4}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_5

    sget-object p1, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v0}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/AsyncTimeout$source$1;

    move-result-object p1

    new-instance p3, Lokio/RealBufferedSource;

    invoke-direct {p3, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/AsyncTimeout$sink$1;

    move-result-object p1

    new-instance p3, Lokio/RealBufferedSink;

    invoke-direct {p3, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v3

    :cond_6
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object p1, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v0}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object p3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p3, :cond_7

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_4
    invoke-static {p0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v2, :cond_9

    sget-object p1, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v2}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_9
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p0
.end method

.method public final newCodec(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/internal/http2/Http2ExchangeCodec;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p0, p2, v1}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget v1, p2, Lokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iget-object v0, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    iget p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    new-instance p2, Lokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    invoke-direct {p2, p1, p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    return-object p2
.end method

.method public final noNewExchanges()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final startHttp2(I)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener$1;

    iput-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-boolean v0, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v4, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v4, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v4, v4, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iput-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v4, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    iput-object v5, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    iput-object v6, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    iput-object p0, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput p1, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    new-instance p1, Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {p1, v1}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const-string v1, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object v3, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v3, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_1
    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    monitor-enter p0

    :try_start_2
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v3, :cond_7

    iget v3, v1, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    move v3, v2

    :goto_2
    const/16 v5, 0xa

    if-ge v3, v5, :cond_5

    shl-int v5, v0, v3

    iget v6, v1, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    if-ne v3, v4, :cond_2

    const/4 v5, 0x3

    goto :goto_3

    :cond_2
    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v6, v1, Lokhttp3/internal/http2/Settings;->values:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    add-int/2addr v3, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p0

    const v0, 0xffff

    if-eq p0, v0, :cond_6

    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sub-int/2addr p0, v0

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    :cond_6
    new-instance p0, Ljava/lang/Thread;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    monitor-exit p0

    throw p1

    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public final supportsUrl(Lokhttp3/HttpUrl;)Z
    .locals 4

    iget v0, p1, Lokhttp3/HttpUrl;->port:I

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget v2, v1, Lokhttp3/HttpUrl;->port:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object p1, p1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v0, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz p0, :cond_1

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iget-object p0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p1, p0}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v2, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget v2, v2, Lokhttp3/HttpUrl;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
