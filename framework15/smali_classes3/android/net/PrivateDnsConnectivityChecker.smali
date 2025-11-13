.class public Landroid/net/PrivateDnsConnectivityChecker;
.super Ljava/lang/Object;
.source "PrivateDnsConnectivityChecker.java"


# static fields
.field private static final blacklist CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final blacklist PRIVATE_DNS_PORT:I = 0x355

.field private static final blacklist TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canConnectToPrivateDnsServer(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "NetworkUtils"

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-static {}, Landroid/net/TrafficStats;->setThreadStatsTagApp()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1388

    :try_start_1
    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x355

    invoke-direct {v4, p0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Connection to %s failed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v2

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    const-string v4, "TLS handshake to %s succeeded."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    const-string v4, "TLS handshake to %s failed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
