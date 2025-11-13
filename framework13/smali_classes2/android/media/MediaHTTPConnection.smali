.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final greylist-max-o CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final greylist-max-o HTTP_TEMP_REDIRECT:I = 0x133

.field private static final greylist-max-o MAX_REDIRECTS:I = 0x14

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final greylist-max-o VERBOSE:Z = false


# instance fields
.field private greylist mAllowCrossDomainRedirect:Z

.field private greylist mAllowCrossProtocolRedirect:Z

.field private volatile greylist mConnection:Ljava/net/HttpURLConnection;

.field private greylist mCurrentOffset:J

.field private greylist mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private blacklist mIsDisconnecting:Ljava/lang/Object;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mResponse:I

.field private greylist mTotalSize:J

.field private greylist mURL:Ljava/net/URL;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 533
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 535
    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 62
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 68
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 71
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 75
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 82
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    iput v1, p0, Landroid/media/MediaHTTPConnection;->mResponse:I

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mIsDisconnecting:Ljava/lang/Object;

    .line 100
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 101
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v0, :cond_0

    .line 102
    const-string v1, "MediaHTTPConnection"

    const-string v2, "MediaHTTPConnection: Unexpected. No CookieHandler found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 106
    return-void
.end method

.method private declared-synchronized greylist-max-o convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "pairs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 156
    .local v5, "pair":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "colonPos":I
    if-ltz v6, :cond_0

    .line 158
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 162
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "colonPos":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_1
    monitor-exit p0

    return-object v0

    .line 151
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pairs":[Ljava/lang/String;
    .end local p1    # "headers":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    monitor-enter p0

    .line 141
    :try_start_0
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 144
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 146
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 140
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "val":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final greylist-max-o isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .line 218
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 219
    return v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 225
    return v0

    .line 229
    :cond_1
    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 230
    return v3

    .line 232
    :cond_2
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 233
    return v3

    .line 236
    :cond_3
    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    .line 237
    :goto_0
    return v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_readAt(JI)I
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private static greylist-max-o parseBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p0, "val"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 134
    :goto_2
    return v0
.end method

.method private declared-synchronized greylist-max-o readAt(J[BI)I
    .locals 8
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    monitor-enter p0

    .line 433
    :try_start_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 434
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 436
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    const/16 v1, -0x3f2

    const/4 v2, -0x1

    :try_start_1
    iget-wide v3, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 440
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 443
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 445
    .local v3, "n":I
    if-ne v3, v2, :cond_1

    .line 448
    const/4 v3, 0x0

    .line 451
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    monitor-exit p0

    return v3

    .line 467
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 464
    :catch_1
    move-exception v2

    goto :goto_1

    .line 472
    :catch_2
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    monitor-exit p0

    return v2

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_3
    move-exception v1

    .line 471
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return v2

    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 465
    .local v2, "e":Ljava/net/UnknownServiceException;
    :goto_1
    :try_start_3
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    monitor-exit p0

    return v1

    .line 461
    .end local v2    # "e":Ljava/net/UnknownServiceException;
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_5
    move-exception v2

    .line 462
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_4
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 463
    monitor-exit p0

    return v1

    .line 458
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    :catch_6
    move-exception v2

    .line 459
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_5
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 460
    monitor-exit p0

    return v1

    .line 432
    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "e":Ljava/net/ProtocolException;
    .end local p1    # "offset":J
    .end local p3    # "data":[B
    .end local p4    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o seekTo(J)V
    .locals 16
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "redirectCount":I
    const-wide/16 v4, -0x1

    :try_start_1
    iget-object v6, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 250
    .local v6, "url":Ljava/net/URL;
    invoke-static {v6}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v7

    move-object v8, v6

    move v6, v0

    .line 263
    .end local v0    # "redirectCount":I
    .local v6, "redirectCount":I
    .local v7, "noProxy":Z
    .local v8, "url":Ljava/net/URL;
    :goto_0
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_16

    .line 266
    if-eqz v7, :cond_0

    .line 267
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 269
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 276
    :goto_1
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_15

    .line 285
    const-string v0, "MediaHTTPConnection"

    const-string/jumbo v9, "setReadTimeout and setConnectTimeout with 8000ms"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v9, 0x1f40

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 287
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v9, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 294
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 296
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 297
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 296
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 301
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_2

    .line 302
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v11, v0

    .line 308
    .local v11, "response":I
    const-string v0, "MediaHTTPConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v0, 0x12c

    const/16 v12, 0x133

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12d

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12e

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12f

    if-eq v11, v0, :cond_9

    if-eq v11, v12, :cond_9

    .line 316
    nop

    .line 355
    iget-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 361
    :cond_3
    const/16 v12, 0xce

    if-ne v11, v12, :cond_5

    .line 366
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Range"

    .line 367
    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 369
    .local v13, "contentRange":Ljava/lang/String;
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 370
    if-eqz v13, :cond_4

    .line 375
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v14, v0

    .line 376
    .local v14, "lastSlashPos":I
    if-ltz v14, :cond_4

    .line 377
    add-int/lit8 v0, v14, 0x1

    .line 378
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    .line 381
    .local v15, "total":Ljava/lang/String;
    :try_start_2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    goto :goto_3

    .line 382
    :catch_0
    move-exception v0

    .line 386
    .end local v13    # "contentRange":Ljava/lang/String;
    .end local v14    # "lastSlashPos":I
    .end local v15    # "total":Ljava/lang/String;
    :cond_4
    :goto_3
    goto :goto_4

    :cond_5
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_8

    .line 391
    :try_start_3
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 394
    :goto_4
    cmp-long v0, v2, v9

    if-lez v0, :cond_7

    if-ne v11, v12, :cond_6

    goto :goto_5

    .line 397
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0}, Ljava/net/ProtocolException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 400
    .restart local p1    # "offset":J
    :cond_7
    :goto_5
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v4, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 401
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 403
    iput-wide v2, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .end local v11    # "response":I
    nop

    .line 424
    monitor-exit p0

    return-void

    .line 388
    .restart local v6    # "redirectCount":I
    .restart local v7    # "noProxy":Z
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v11    # "response":I
    :cond_8
    :try_start_4
    iput v11, v1, Landroid/media/MediaHTTPConnection;->mResponse:I

    .line 389
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 319
    .restart local p1    # "offset":J
    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x14

    if-gt v6, v0, :cond_14

    .line 323
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "method":Ljava/lang/String;
    if-ne v11, v12, :cond_b

    const-string v4, "GET"

    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    .line 329
    :cond_a
    new-instance v4, Ljava/net/NoRouteToHostException;

    const-string v5, "Invalid redirect"

    invoke-direct {v4, v5}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v4

    .line 331
    .restart local p1    # "offset":J
    :cond_b
    :goto_6
    iget-object v4, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 335
    new-instance v5, Ljava/net/URL;

    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v5, v9, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v8, v5

    .line 336
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 337
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    .line 338
    :cond_c
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Unsupported protocol redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v5

    .line 340
    .restart local p1    # "offset":J
    :cond_d
    :goto_7
    iget-object v5, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 341
    .local v5, "sameProtocol":Z
    iget-boolean v9, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v9, :cond_f

    if-eqz v5, :cond_e

    goto :goto_8

    .line 342
    :cond_e
    new-instance v9, Ljava/net/NoRouteToHostException;

    const-string v10, "Cross-protocol redirects are disallowed"

    invoke-direct {v9, v10}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v9

    .line 344
    .restart local p1    # "offset":J
    :cond_f
    :goto_8
    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 345
    .local v9, "sameHost":Z
    iget-boolean v10, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v10, :cond_11

    if-eqz v9, :cond_10

    goto :goto_9

    .line 346
    :cond_10
    new-instance v10, Ljava/net/NoRouteToHostException;

    const-string v12, "Cross-domain redirects are disallowed"

    invoke-direct {v10, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v10

    .line 349
    .restart local p1    # "offset":J
    :cond_11
    :goto_9
    if-eq v11, v12, :cond_12

    .line 351
    iput-object v8, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 353
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "sameProtocol":Z
    .end local v9    # "sameHost":Z
    :cond_12
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    .line 333
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    :cond_13
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Invalid redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v5

    .line 320
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .restart local p1    # "offset":J
    :cond_14
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many redirects: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 277
    .end local v11    # "response":I
    .restart local p1    # "offset":J
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v4, "concurrently disconnecting"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 264
    .restart local p1    # "offset":J
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v4, "concurrently disconnecting"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .restart local p1    # "offset":J
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 406
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    instance-of v0, v4, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_17

    .line 407
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    .end local v4    # "e":Ljava/lang/Exception;
    .end local p1    # "offset":J
    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 416
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local p1    # "offset":J
    :cond_17
    nop

    .line 417
    :try_start_6
    const-string v0, "MediaHTTPConnection"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 419
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 420
    iput-wide v5, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 422
    throw v4

    .line 409
    :catch_2
    move-exception v0

    .line 410
    .local v0, "f":Ljava/net/SocketTimeoutException;
    const-string v5, "MediaHTTPConnection"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 412
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 413
    iput-wide v5, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 415
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    .end local v0    # "f":Ljava/net/SocketTimeoutException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local p1    # "offset":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o teardownConnection()V
    .locals 3

    .line 199
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mIsDisconnecting:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 206
    :goto_0
    :try_start_2
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 209
    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 212
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 214
    :cond_1
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized greylist connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mIsDisconnecting:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 120
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 121
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    nop

    .line 126
    :try_start_2
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 127
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 111
    .end local p1    # "uri":Ljava/lang/String;
    .end local p2    # "headers":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist disconnect()V
    .locals 3

    .line 173
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 178
    .local v0, "connectionToDisconnect":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mIsDisconnecting:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 188
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 189
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 190
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 193
    nop

    .line 194
    return-void

    .line 190
    .restart local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 193
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 522
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 523
    return-void
.end method

.method public declared-synchronized greylist getMIMEType()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 499
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    goto :goto_0

    .line 500
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget v1, p0, Landroid/media/MediaHTTPConnection;->mResponse:I

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 503
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed with error => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaHTTPConnection;->mResponse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v1, "MEDIA_ERROR_IO"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 507
    :cond_0
    :try_start_3
    const-string v1, "application/octet-stream"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSize()J
    .locals 3

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 485
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    goto :goto_0

    .line 486
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, -0x1

    monitor-exit p0

    return-wide v1

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    :goto_0
    :try_start_2
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 482
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist getUri()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 517
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist readAt(JI)I
    .locals 1
    .param p1, "offset"    # J
    .param p3, "size"    # I

    monitor-enter p0

    .line 429
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 429
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    .end local p1    # "offset":J
    .end local p3    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
