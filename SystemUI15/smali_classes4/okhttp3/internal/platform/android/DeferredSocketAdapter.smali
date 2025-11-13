.class public final Lokhttp3/internal/platform/android/DeferredSocketAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokhttp3/internal/platform/android/SocketAdapter;


# instance fields
.field public delegate:Lokhttp3/internal/platform/android/SocketAdapter;

.field public final socketAdapterFactory:Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;


# direct methods
.method public constructor <init>(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->socketAdapterFactory:Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    return-void
.end method


# virtual methods
.method public final configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->getDelegate(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lokhttp3/internal/platform/android/SocketAdapter;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized getDelegate(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->delegate:Lokhttp3/internal/platform/android/SocketAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->socketAdapterFactory:Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    invoke-interface {v0, p1}, Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;->matchesSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->socketAdapterFactory:Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    invoke-interface {v0, p1}, Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;->create(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->delegate:Lokhttp3/internal/platform/android/SocketAdapter;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->delegate:Lokhttp3/internal/platform/android/SocketAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->getDelegate(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final matchesSocket(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/platform/android/DeferredSocketAdapter;->socketAdapterFactory:Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    invoke-interface {p0, p1}, Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;->matchesSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0
.end method
