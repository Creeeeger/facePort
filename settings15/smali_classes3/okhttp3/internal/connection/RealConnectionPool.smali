.class public final Lokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field public final cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;

.field public cleanupRunning:Z

.field public final connections:Ljava/util/Deque;

.field public final keepAliveDurationNs:J

.field public final maxIdleConnections:I

.field public final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    new-instance v7, Lokhttp3/internal/Util$$ExternalSyntheticLambda1;

    const-string v0, "OkHttp ConnectionPool"

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lokhttp3/internal/Util$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;-><init>(Lokhttp3/internal/connection/RealConnectionPool;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    return-void
.end method


# virtual methods
.method public final connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
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
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

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

.method public final pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .locals 7

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v4, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A connection to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v6, v6, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v6, v6, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    iget-object v4, v4, Lokhttp3/internal/connection/Transmitter$TransmitterReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return v1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z
    .locals 8

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    if-eqz p4, :cond_1

    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_0

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lokhttp3/OkHttpClient$1;->instance:Lokhttp3/OkHttpClient$1;

    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    iget-object v4, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p1}, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v4, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v5, v3, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v5, v5, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v5, v5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Route;

    iget-object v6, v5, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_9

    iget-object v6, v3, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    if-ne v6, v7, :cond_9

    iget-object v6, v3, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v5, v5, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v5}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v1, p1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v3, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    if-eq v1, v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    :try_start_0
    iget-object v1, p1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    iget-object v3, v3, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object p0, p2, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez p0, :cond_8

    iput-object v0, p2, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object p0, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    new-instance p1, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    iget-object p3, p2, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;-><init>(Lokhttp3/internal/connection/Transmitter;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v1
.end method
