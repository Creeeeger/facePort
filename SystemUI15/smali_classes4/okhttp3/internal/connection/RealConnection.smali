.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allocationLimit:I

.field public final calls:Ljava/util/List;

.field public handshake:Lokhttp3/Handshake;

.field public http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field public idleAtNs:J

.field public noCoalescedConnections:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/RealConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    const/4 p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    return-void
.end method

.method public static connectFailed$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final connect(IIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 5

    iget-object p5, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez p5, :cond_d

    iget-object p5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p5, p5, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object p5, p5, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v0, p5}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_2

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p5, p5, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object p5, p5, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object p5, p5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    invoke-virtual {v1, p5}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication to "

    const-string p3, " not permitted by network security policy"

    invoke-static {p2, p5, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    iget-object p5, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_c

    :goto_0
    const/4 p5, 0x0

    move-object v1, p5

    :goto_1
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v3, v2, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v3, v3, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, p1, p2, p3, p6}, Lokhttp3/internal/connection/RealConnection;->connectTunnel(IIILokhttp3/EventListener;)V

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-nez v2, :cond_4

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1, p2, p6}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/EventListener;)V

    :cond_4
    invoke-virtual {p0, v0, p6}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;Lokhttp3/EventListener;)V

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p1, v2, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;
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
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Too many tunnel connections attempted: 21"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    return-void

    :goto_4
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_7
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_8
    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x1

    iput v3, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v4, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_9

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_5
    if-eqz p4, :cond_b

    iput-boolean v3, v0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    iget-boolean v3, v0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    if-eqz v3, :cond_b

    instance-of v3, v2, Ljava/net/ProtocolException;

    if-nez v3, :cond_b

    instance-of v3, v2, Ljava/io/InterruptedIOException;

    if-nez v3, :cond_b

    instance-of v3, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-nez v3, :cond_b

    :cond_a
    instance-of v3, v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v3, :cond_b

    instance-of v2, v2, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_b

    goto/16 :goto_1

    :cond_b
    throw v1

    :cond_c
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already connected"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final connectSocket(IILokhttp3/EventListener;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lokhttp3/internal/connection/RealConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p3, p3, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v0, p3, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p1, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    new-instance p1, Lokio/SocketAsyncTimeout;

    invoke-direct {p1, v0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance p2, Lokio/InputStreamSource;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    new-instance p3, Lokio/AsyncTimeout$source$1;

    invoke-direct {p3, p1, p2}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    new-instance p1, Lokio/RealBufferedSource;

    invoke-direct {p1, p3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    new-instance p1, Lokio/SocketAsyncTimeout;

    invoke-direct {p1, v0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance p2, Lokio/OutputStreamSink;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    new-instance p3, Lokio/AsyncTimeout$sink$1;

    invoke-direct {p3, p1, p2}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    new-instance p1, Lokio/RealBufferedSink;

    invoke-direct {p1, p3}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to connect to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object p0, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final connectTunnel(IIILokhttp3/EventListener;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v4, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iput-object v4, v2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    const-string v4, "CONNECT"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    iget-object v4, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v6, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v9, "Host"

    invoke-virtual {v8, v9, v6}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v8, "Proxy-Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v6, v8, v9}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v8, "User-Agent"

    const-string v9, "okhttp/4.9.1"

    invoke-virtual {v6, v8, v9}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6}, Lokhttp3/Response$Builder;-><init>()V

    iput-object v2, v6, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    sget-object v8, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v8, v6, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    const/16 v8, 0x197

    iput v8, v6, Lokhttp3/Response$Builder;->code:I

    const-string v9, "Preemptive Authenticate"

    iput-object v9, v6, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v9, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    iput-object v9, v6, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    const-wide/16 v9, -0x1

    iput-wide v9, v6, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v9, v6, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iget-object v11, v6, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v12, "Proxy-Authenticate"

    const-string v13, "OkHttp-Preemptive"

    invoke-virtual {v11, v12, v13}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v6

    iget-object v11, v4, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-interface {v11, v3, v6}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v2, v6

    :cond_0
    move-object v12, v2

    const/4 v11, 0x0

    :goto_0
    const/16 v13, 0x15

    if-ge v11, v13, :cond_9

    move/from16 v13, p1

    move-object/from16 v14, p4

    invoke-virtual {v0, v13, v1, v14}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/EventListener;)V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "CONNECT "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-static {v8, v7}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " HTTP/1.1"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iget-object v15, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v9, Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {v9, v5, v0, v15, v7}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    iget-object v10, v15, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v10}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v10

    int-to-long v5, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v5, v6, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v5, v7, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    move/from16 v6, p3

    int-to-long v13, v6

    invoke-virtual {v5, v13, v14, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v5, v12, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v9, v5, v8}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    invoke-virtual {v9}, Lokhttp3/internal/http1/Http1ExchangeCodec;->finishRequest()V

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v12, v10, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v12

    const-wide/16 v16, -0x1

    cmp-long v14, v12, v16

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v12, v13}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    move-result-object v9

    const v12, 0x7fffffff

    invoke-static {v9, v12, v1}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v9}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->close()V

    :goto_2
    iget v1, v10, Lokhttp3/Response;->code:I

    const/16 v9, 0xc8

    if-eq v1, v9, :cond_6

    const/16 v9, 0x197

    if-ne v1, v9, :cond_5

    iget-object v1, v4, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-interface {v1, v3, v10}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v1, v10, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    const-string v7, "Connection"

    invoke-virtual {v1, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    const-string v7, "close"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v13, p1

    move/from16 v1, p2

    move-object/from16 v14, p4

    move-wide/from16 v9, v16

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Lokhttp3/Response;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v9, 0x197

    iget-object v1, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v7, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_9

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v1, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    iput-object v1, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    add-int/lit8 v11, v11, 0x1

    move-object v5, v1

    move v8, v9

    move-wide/from16 v9, v16

    const/4 v7, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public final establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;Lokhttp3/EventListener;)V
    .locals 9

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    iget-object p1, v0, Lokhttp3/Address;->protocols:Ljava/util/List;

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->startHttp2()V

    return-void

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Hostname "

    const-string v0, "\n              |Hostname "

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v5, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v6, v5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget v5, v5, Lokhttp3/HttpUrl;->port:I

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v6, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v2}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object p1

    iget-boolean v4, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v4, :cond_2

    sget-object v4, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    iget-object v5, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v5, v5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v6, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-virtual {v4, v2, v5, v6}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    sget-object v5, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lokhttp3/Handshake$Companion;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v5

    iget-object v6, v1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v8, v8, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-interface {v6, v8, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v7

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lokhttp3/CertificatePinner;->Companion:Lokhttp3/CertificatePinner$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lokhttp3/CertificatePinner$Companion;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n              "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object p2, p2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p2, v1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lokhttp3/Handshake;

    iget-object v4, v5, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    iget-object v6, v5, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    iget-object v7, v5, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    new-instance v8, Lokhttp3/internal/connection/RealConnection$connectTls$1;

    invoke-direct {v8, p2, v5, v1}, Lokhttp3/internal/connection/RealConnection$connectTls$1;-><init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V

    invoke-direct {v0, v4, v6, v7, v8}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iget-object v0, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    new-instance v1, Lokhttp3/internal/connection/RealConnection$connectTls$2;

    invoke-direct {v1, p0}, Lokhttp3/internal/connection/RealConnection$connectTls$2;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    invoke-virtual {p2, v0, v1}, Lokhttp3/CertificatePinner;->check$okhttp(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz p1, :cond_6

    sget-object p1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v2}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    sget-object p1, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    new-instance p1, Lokio/SocketAsyncTimeout;

    invoke-direct {p1, v2}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance p2, Lokio/InputStreamSource;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    new-instance v0, Lokio/AsyncTimeout$source$1;

    invoke-direct {v0, p1, p2}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    new-instance p1, Lokio/RealBufferedSource;

    invoke-direct {p1, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    new-instance p1, Lokio/SocketAsyncTimeout;

    invoke-direct {p1, v2}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance p2, Lokio/OutputStreamSink;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    new-instance v0, Lokio/AsyncTimeout$sink$1;

    invoke-direct {v0, p1, p2}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    new-instance p1, Lokio/RealBufferedSink;

    invoke-direct {p1, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    if-eqz v3, :cond_7

    sget-object p1, Lokhttp3/Protocol;->Companion:Lokhttp3/Protocol$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/Protocol$Companion;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p1

    goto :goto_1

    :cond_7
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v2}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->startHttp2()V

    :cond_8
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_9
    :try_start_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v3, :cond_a

    sget-object p1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    invoke-virtual {p1, v3}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_b
    throw p0
.end method

.method public final isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 8

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v1, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v1, p1}, Lokhttp3/Address;->equalsNonHost$okhttp(Lokhttp3/Address;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v3, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v4, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v5, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v5, v5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-nez v3, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/Iterable;

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Route;

    iget-object v6, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_5

    iget-object v6, v0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    if-ne v6, v7, :cond_5

    iget-object v6, v0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p2, p1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    if-eq p2, v0, :cond_6

    return v2

    :cond_6
    sget-object p2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    iget-object p2, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget v3, p2, Lokhttp3/HttpUrl;->port:I

    iget v4, v1, Lokhttp3/HttpUrl;->port:I

    if-eq v4, v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_a

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_0
    :try_start_0
    iget-object p1, p1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v2

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    return v2
.end method

.method public final isHealthy(Z)Z
    .locals 9

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p0, v2, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long p0, p0, v3

    if-gez p0, :cond_2

    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v2

    move v5, v6

    :goto_0
    return v5

    :goto_1
    monitor-exit v2

    throw p0

    :cond_3
    monitor-enter p0

    :try_start_2
    iget-wide v7, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long p0, v0, v7

    if-ltz p0, :cond_4

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, Lokio/RealBufferedSource;->exhausted()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr p1, v6

    :try_start_5
    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move v5, v6

    :catch_1
    :goto_2
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_3
    return v5
.end method

.method public final newCodec$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 6

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v3, :cond_0

    new-instance v0, Lokhttp3/internal/http2/Http2ExchangeCodec;

    invoke-direct {v0, p1, p0, p2, v3}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    goto :goto_0

    :cond_0
    iget v3, p2, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v0, v2, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    iget p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {v0, p1, p0, v1, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized noNewExchanges$okhttp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p1, p1, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final startHttp2()V
    .locals 9

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/RealBufferedSource;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/RealBufferedSink;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lokhttp3/internal/http2/Http2Connection$Builder;

    sget-object v5, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(ZLokhttp3/internal/concurrent/TaskRunner;)V

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v7, v7, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v7, v7, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v7, v7, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iget-boolean v0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MockWebServer "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    iput-object v1, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    iput-object v2, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    iput-object p0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput v3, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, v4}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->DEFAULT_SETTINGS:Lokhttp3/internal/http2/Settings;

    iget v2, v1, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    iget-object v1, v1, Lokhttp3/internal/http2/Settings;->values:[I

    aget v1, v1, v4

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    :goto_1
    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const-string v1, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    goto :goto_3

    :cond_2
    :try_start_1
    sget-object v2, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    :goto_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v2, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-interface {v1, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_3
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v2, :cond_9

    iget v2, v1, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {p0, v3, v2, v4, v3}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    move v2, v3

    :goto_4
    const/16 v7, 0xa

    if-ge v2, v7, :cond_7

    shl-int v7, v6, v2

    iget v8, v1, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    if-eq v2, v4, :cond_5

    const/4 v7, 0x7

    if-eq v2, v7, :cond_4

    move v7, v2

    goto :goto_5

    :cond_4
    move v7, v4

    goto :goto_5

    :cond_5
    const/4 v7, 0x3

    :goto_5
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v8, v7}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v8, v1, Lokhttp3/internal/http2/Settings;->values:[I

    aget v8, v8, v2

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p0

    const v1, 0xffff

    if-eq p0, v1, :cond_8

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sub-int/2addr p0, v1

    int-to-long v6, p0

    invoke-virtual {v2, v3, v6, v7}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    :cond_8
    invoke-virtual {v5}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object p0

    iget-object v5, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue$execute$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLjava/lang/String;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    return-void

    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    monitor-exit p0

    throw v0

    :cond_a
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    monitor-exit p0

    throw v0
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

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    iget-object v1, v1, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    if-eqz v1, :cond_0

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
